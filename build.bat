@echo off

pushd build
cl /Zi /LD /EHsc ..\src\engine.cpp ..\src\game.cpp ..\src\PhysSpace2D.cpp ..\src\PhysObj2D.cpp ..\src\Box.cpp ..\src\Circle.cpp ..\src\CollisionData2D.cpp ..\src\HitBox2D.cpp ..\src\Point2D.cpp ..\src\Shape2D.cpp ..\src\Vec2D.cpp user32.lib Winmm.lib Gdi32.lib
cl /Zi /LD /EHsc /I ..\src\Render /I ..\examples\Tetris ..\src\Render\Render2D.cpp ..\src\Render\Drawable2D.cpp ..\src\Render\TextDrawable.cpp ..\examples\Tetris\Render\BlockDrawable.cpp ..\src\Render\CircleDrawable.cpp ..\src\Render\SquareDrawable.cpp
cl /Zi /EHsc /I ..\src /I ..\src\Render /I ..\examples\Tetris\Render ..\examples\Tetris\TetrisMain.cpp ..\examples\Tetris\Tetris.cpp ..\examples\Tetris\Menu.cpp ..\examples\Tetris\Board.cpp ..\examples\Tetris\Block.cpp /link engine.lib Render2D.lib
cl /Zi /EHsc /I ..\src /I ..\src\Render /I ..\examples\Pong\Render /I ..\..\Box2D\Box2D\Box2D /I ..\..\Box2D\Box2D ..\examples\Pong\PongMain.cpp ..\examples\Pong\Table.cpp ..\examples\Pong\Ball.cpp ..\examples\Pong\Paddle.cpp /link engine.lib Render2D.lib ..\..\Box2D\build\Box2D.lib
popd
