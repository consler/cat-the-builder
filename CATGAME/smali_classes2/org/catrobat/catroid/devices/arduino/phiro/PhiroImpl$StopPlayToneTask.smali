.class Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$StopPlayToneTask;
.super Ljava/util/TimerTask;
.source "PhiroImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopPlayToneTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$StopPlayToneTask;->this$0:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;
    .param p2, "x1"    # Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;

    .line 104
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$StopPlayToneTask;-><init>(Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$StopPlayToneTask;->this$0:Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;->access$100(Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;II)V

    .line 108
    return-void
.end method
