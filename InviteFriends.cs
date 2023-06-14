using UnityEngine;
using Photon.Pun;
using Photon.Realtime;
using System.Collections.Generic;


public class QuickMatch : MonoBehaviourPunCallbacks
{
 
	if(!gotFriends)
            	{
                string[] friends = FriendsList.ToArray();
                PhotonNetwork.FindFriends(friends);
 
              	  if (PhotonNetwork.Friends != null)
               		 {
                  			  Debug.Log(PhotonNetwork.Friends.Count);
                   			 foreach (FriendInfo info in PhotonNetwork.Friends)
                   			 {
                     				   string s = string.Empty;
 
                       			 if (info.IsInRoom)
                        		
				    s = info.Room.ToString();
 
                       		 mFriendsList.Add(new FriendsInfo(info.Name.ToString(), s, info.IsOnline));
                  			  }
 
                    gotFriends = true;
                		}
 
              
         	  }

    private maxPlayers = 2;

    private void CreateRoom()
    {
        RoomOptions roomOptions = new RoomOptions();
        roomOptions.MaxPlayers = maxPlayers;
        PhotonNetwork.CreateRoom(null, roomOptions, null);
    }

    private void QuickMatch()
    {
        PhotonNetwork.JoinRandomRoom();
    }

    public override void OnJoinRandomFailed(short returnCode, string message)
    {
        CreateRoom();
    }

    public override void OnJoinedRoom()
    {
        // joined a room successfully
    }
}

public class RoomListCaching : MonoBehaviourPunCallbacks
{
    private TypedLobby customLobby = new TypedLobby("customLobby", LobbyType.Default);

    private Dictionary<string, RoomInfo> cachedRoomList = new Dictionary<string, RoomInfo>();

    public void JoinLobby()
    {
        PhotonNetwork.JoinLobby(customLobby);
    }

    private void UpdateCachedRoomList(List<RoomInfo> roomList)
    {
        for(int i=0; i<roomList.Count; i++)
        {
            RoomInfo info = roomList[i];
            if (info.RemovedFromList)
            {
                cachedRoomList.Remove(info.Name);
            }
            else
            {
                cachedRoomList[info.Name] = info;
            }
        }
    }

    public override void OnJoinedLobby()
    {
        cachedRoomList.Clear();
    }

    public override void OnRoomListUpdate(List<RoomInfo> roomList)
    {
        UpdateCachedRoomList(roomList);
    }

    public override void OnLeftLobby()
    {
        cachedRoomList.Clear();
    }

    public override void OnDisconnected(DisconnectCause cause)
    {
        cachedRoomList.Clear();
    }
}
