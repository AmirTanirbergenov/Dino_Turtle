    import 'dart:ui';
    
    import 'package:flame/game.dart';
    import 'dino_player.dart';
    import 'dino_world.dart';
import 'directions.dart';
    
    class DinoGame extends FlameGame{
          onArrowKeyChanged(Direction direction){
      _dinoPlayer.direction = direction;
    }
        Direction direction = Direction.none;
    
    @override
    void update(double dt) {
      super.update(dt);
      updatePosition(dt);
    }
    
    updatePosition(double dt) {
      switch (direction) {
        case Direction.up:
          var position;
          position.y --;
          break;
        case Direction.down:
          var position;
          position.y ++;
          break;
        case Direction.left:
          var position;
          position.x --;
          break;
        case Direction.right:
          var position;
          position.x ++;
          break;
        case Direction.none:
          break;
      }
    }


      DinoPlayer _dinoPlayer = DinoPlayer();
    DinoWorld _dinoWorld = DinoWorld();
      @override
      Future<void> onLoad() async {
        super.onLoad();
        await add(_dinoWorld);
        await add(_dinoPlayer);
        _dinoPlayer.position = _dinoWorld.size / 1.5;
        camera.followComponent(_dinoPlayer,
            worldBounds: Rect.fromLTRB(0, 0, _dinoWorld.size.x, _dinoWorld.size.y));
      }
    }
