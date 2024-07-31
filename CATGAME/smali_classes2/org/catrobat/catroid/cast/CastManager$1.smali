.class final Lorg/catrobat/catroid/cast/CastManager$1;
.super Ljava/util/ArrayList;
.source "CastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/cast/CastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    const-class v0, Lorg/catrobat/catroid/content/bricks/CameraBrick;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastManager$1;->add(Ljava/lang/Object;)Z

    .line 93
    const-class v0, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastManager$1;->add(Ljava/lang/Object;)Z

    .line 94
    const-class v0, Lorg/catrobat/catroid/content/bricks/FlashBrick;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/cast/CastManager$1;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method
