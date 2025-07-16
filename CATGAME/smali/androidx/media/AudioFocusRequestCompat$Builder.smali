.class public final Landroidx/media/AudioFocusRequestCompat$Builder;
.super Ljava/lang/Object;
.source "AudioFocusRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAcceptsDelayedFocusGain:Z

.field private mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

.field private mFocusChangeHandler:Landroid/os/Handler;

.field private mFocusGain:I

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mPauseOnDuck:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v0, Landroidx/media/AudioFocusRequestCompat;->FOCUS_DEFAULT_ATTR:Landroidx/media/AudioAttributesCompat;

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

    .line 237
    invoke-virtual {p0, p1}, Landroidx/media/AudioFocusRequestCompat$Builder;->setFocusGain(I)Landroidx/media/AudioFocusRequestCompat$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/media/AudioFocusRequestCompat;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v0, Landroidx/media/AudioFocusRequestCompat;->FOCUS_DEFAULT_ATTR:Landroidx/media/AudioAttributesCompat;

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getFocusGain()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusGain:I

    .line 255
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 256
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getFocusChangeHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusChangeHandler:Landroid/os/Handler;

    .line 257
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getAudioAttributesCompat()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

    .line 258
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->willPauseWhenDucked()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mPauseOnDuck:Z

    return-void

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AudioFocusRequestCompat to copy must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static isValidFocusGain(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public build()Landroidx/media/AudioFocusRequestCompat;
    .locals 7

    .line 377
    iget-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Landroidx/media/AudioFocusRequestCompat;

    iget v2, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusGain:I

    iget-object v3, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v4, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusChangeHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

    iget-boolean v6, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mPauseOnDuck:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media/AudioFocusRequestCompat;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroidx/media/AudioAttributesCompat;Z)V

    return-object v0

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t build an AudioFocusRequestCompat instance without a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media/AudioFocusRequestCompat$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 348
    iput-object p1, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

    return-object p0

    .line 346
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Illegal null AudioAttributes"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFocusGain(I)Landroidx/media/AudioFocusRequestCompat$Builder;
    .locals 3

    .line 272
    invoke-static {p1}, Landroidx/media/AudioFocusRequestCompat$Builder;->isValidFocusGain(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iput p1, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusGain:I

    return-object p0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal audio focus gain type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroidx/media/AudioFocusRequestCompat$Builder;
    .locals 2

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media/AudioFocusRequestCompat$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroidx/media/AudioFocusRequestCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroidx/media/AudioFocusRequestCompat$Builder;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 324
    iput-object p1, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 325
    iput-object p2, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusChangeHandler:Landroid/os/Handler;

    return-object p0

    .line 321
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Handler must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OnAudioFocusChangeListener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWillPauseWhenDucked(Z)Landroidx/media/AudioFocusRequestCompat$Builder;
    .locals 0

    .line 363
    iput-boolean p1, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mPauseOnDuck:Z

    return-object p0
.end method
