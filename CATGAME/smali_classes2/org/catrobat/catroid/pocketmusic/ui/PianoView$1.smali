.class synthetic Lorg/catrobat/catroid/pocketmusic/ui/PianoView$1;
.super Ljava/lang/Object;
.source "PianoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$catrobat$catroid$pocketmusic$ui$PianoView$ButtonHeight:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 111
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->values()[Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$1;->$SwitchMap$org$catrobat$catroid$pocketmusic$ui$PianoView$ButtonHeight:[I

    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->singleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$1;->$SwitchMap$org$catrobat$catroid$pocketmusic$ui$PianoView$ButtonHeight:[I

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->oneAndAHalfButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$1;->$SwitchMap$org$catrobat$catroid$pocketmusic$ui$PianoView$ButtonHeight:[I

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->doubleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
