.class public Lorg/catrobat/catroid/content/SoundFilePathWithSprite;
.super Ljava/lang/Object;
.source "SoundFilePathWithSprite.java"


# instance fields
.field private final soundFilePath:Ljava/lang/String;

.field private final sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "soundFilePath"    # Ljava/lang/String;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;->soundFilePath:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p1, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 40
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;

    .line 41
    .local v0, "soundFilePathWithSprite":Lorg/catrobat/catroid/content/SoundFilePathWithSprite;
    iget-object v2, v0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;->soundFilePath:Ljava/lang/String;

    iget-object v3, p0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;->soundFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, p0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 44
    .end local v0    # "soundFilePathWithSprite":Lorg/catrobat/catroid/content/SoundFilePathWithSprite;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->hashCode()I

    move-result v0

    .line 50
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/content/SoundFilePathWithSprite;->soundFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method
