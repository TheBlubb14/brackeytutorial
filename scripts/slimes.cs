using Godot;
using GodotSharpKit.Misc;

[OnReady]
public partial class slimes : Node2D
{
    private const int SPEED = 60;

    private int direction = 1;

    [OnReadyGet("RayCastRight")]
    private RayCast2D RayCastRight;
    
    [OnReadyGet("RayCastLeft")]
    private RayCast2D RayCastLeft;

    [OnReadyGet("AnimatedSprite2D")]
    private AnimatedSprite2D AnimatedSprite2D;

    public override void _Ready()
    {
        base._Ready();
        OnReady();
    }

    public override void _Process(double delta)
    {
        if (RayCastRight.IsColliding())
        {
            direction = -1;
            AnimatedSprite2D.FlipH = true;
        }

        if (RayCastLeft.IsColliding())
        {
            direction = 1;
            AnimatedSprite2D.FlipH = false;
        }

        Position = Position with { X = Position.X + direction * SPEED * (float)delta };
    }
}
