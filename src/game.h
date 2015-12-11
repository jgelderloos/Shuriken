#ifndef GAME_H_
#define GAME_H_

class __declspec(dllexport) Game
{
public:
  Game();
  ~Game();
  virtual void start(void);
  virtual void end(void);
  virtual bool isRunning(void);
  virtual void handleInput(char);
  virtual void update(void);
  virtual void draw(void);
  virtual int getDesiredFPS(void);
  virtual unsigned int* getMsProcessTime(void); 
  private:
  bool running;
};

#endif // GAME_H_
