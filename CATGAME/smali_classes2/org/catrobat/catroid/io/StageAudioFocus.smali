.class public Lorg/catrobat/catroid/io/StageAudioFocus;
.super Ljava/lang/Object;
.source "StageAudioFocus.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private isAudioFocusGranted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/catrobat/catroid/io/StageAudioFocus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/StageAudioFocus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/io/StageAudioFocus;->audioManager:Landroid/media/AudioManager;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/io/StageAudioFocus;->isAudioFocusGranted:Z

    .line 37
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/catrobat/catroid/io/StageAudioFocus;->audioManager:Landroid/media/AudioManager;

    .line 38
    return-void
.end method


# virtual methods
.method public isAudioFocusGranted()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/catrobat/catroid/io/StageAudioFocus;->isAudioFocusGranted:Z

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .line 61
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/StageAudioFocus;->releaseAudioFocus()V

    .line 64
    :cond_0
    return-void
.end method

.method public releaseAudioFocus()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/io/StageAudioFocus;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/io/StageAudioFocus;->isAudioFocusGranted:Z

    .line 53
    return-void
.end method

.method public requestAudioFocus()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/StageAudioFocus;->isAudioFocusGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/StageAudioFocus;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 47
    .local v0, "result":I
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/catrobat/catroid/io/StageAudioFocus;->isAudioFocusGranted:Z

    .line 48
    return-void
.end method
