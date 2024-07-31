.class final Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;
.super Ljava/lang/Object;
.source "VisualPlacementTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchEventData"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;

.field private final timeStamp:J

.field private final xCoordinate:F

.field private final yCoordinate:F


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;JFF)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->this$0:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->timeStamp:J

    .line 49
    iput p4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->xCoordinate:F

    .line 50
    iput p5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->yCoordinate:F

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;JFFLorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;
    .param p2, "x1"    # J
    .param p4, "x2"    # F
    .param p5, "x3"    # F
    .param p6, "x4"    # Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$1;

    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;-><init>(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;JFF)V

    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;)F
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;

    .line 42
    iget v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->xCoordinate:F

    return v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;)F
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;

    .line 42
    iget v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->yCoordinate:F

    return v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;)J
    .locals 2
    .param p0, "x0"    # Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;

    .line 42
    iget-wide v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->timeStamp:J

    return-wide v0
.end method
