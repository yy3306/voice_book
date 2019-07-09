package dao.prototype;

import entity.Audio;

public interface IAudioDao {
   void add(Audio  audio);
   Audio  findByUUid(String uuid);
   Audio  findById(int id);
}
