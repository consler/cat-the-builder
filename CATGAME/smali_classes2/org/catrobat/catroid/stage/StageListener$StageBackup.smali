.class Lorg/catrobat/catroid/stage/StageListener$StageBackup;
.super Ljava/lang/Object;
.source "StageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/stage/StageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StageBackup"
.end annotation


# instance fields
.field actors:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field axesOn:Z

.field batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field bubbleActorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lorg/catrobat/catroid/stage/ShowBubbleActor;",
            ">;"
        }
    .end annotation
.end field

.field camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field cameraRunning:Z

.field deltaActionTimeDivisor:F

.field embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

.field finished:Z

.field flashState:Z

.field font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field passepartout:Lorg/catrobat/catroid/stage/Passepartout;

.field paused:Z

.field penActor:Lorg/catrobat/catroid/stage/PenActor;

.field physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

.field reloadProject:Z

.field soundBackupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/SoundBackup;",
            ">;"
        }
    .end annotation
.end field

.field spriteToFocusOn:Lorg/catrobat/catroid/content/Sprite;

.field sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/catrobat/catroid/stage/StageListener;

.field timeToVibrate:J

.field viewPort:Lcom/badlogic/gdx/utils/viewport/Viewport;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/stage/StageListener;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lorg/catrobat/catroid/stage/StageListener$StageBackup;->this$0:Lorg/catrobat/catroid/stage/StageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/stage/StageListener;Lorg/catrobat/catroid/stage/StageListener$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/stage/StageListener;
    .param p2, "x1"    # Lorg/catrobat/catroid/stage/StageListener$1;

    .line 823
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/stage/StageListener$StageBackup;-><init>(Lorg/catrobat/catroid/stage/StageListener;)V

    return-void
.end method
