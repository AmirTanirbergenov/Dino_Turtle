    import 'package:flame/components.dart';
    
    class DinoPlayer extends SpriteComponent with HasGameRef {
      DinoPlayer() : super(size: Vector2.all(100.0));

  set direction(direction) {}
    
      @override
      Future<void> onLoad() async {
        super.onLoad();
        sprite = await gameRef.loadSprite('idle.png');
        position = gameRef.size / 2;
      }
    }