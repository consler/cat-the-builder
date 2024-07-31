.class public Lorg/catrobat/catroid/content/SoundBackup;
.super Ljava/lang/Object;
.source "SoundBackup.java"


# instance fields
.field private final currentPosition:I

.field private final pathToSoundFile:Ljava/lang/String;

.field private final startedBySprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;I)V
    .locals 0
    .param p1, "pathToSoundFile"    # Ljava/lang/String;
    .param p2, "startedBySprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "currentPosition"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/SoundBackup;->pathToSoundFile:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/catrobat/catroid/content/SoundBackup;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    .line 34
    iput p3, p0, Lorg/catrobat/catroid/content/SoundBackup;->currentPosition:I

    .line 35
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/catrobat/catroid/content/SoundBackup;->currentPosition:I

    return v0
.end method

.method public getPathToSoundFile()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/SoundBackup;->pathToSoundFile:Ljava/lang/String;

    return-object v0
.end method

.method public getStartedBySprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/SoundBackup;->startedBySprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method
