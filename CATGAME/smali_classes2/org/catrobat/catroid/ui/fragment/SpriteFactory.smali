.class public Lorg/catrobat/catroid/ui/fragment/SpriteFactory;
.super Ljava/lang/Object;
.source "SpriteFactory.java"


# static fields
.field public static final SPRITE_BASE:Ljava/lang/String;

.field public static final SPRITE_GROUP:Ljava/lang/String;

.field public static final SPRITE_GROUP_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;->SPRITE_BASE:Ljava/lang/String;

    .line 32
    const-class v0, Lorg/catrobat/catroid/content/GroupSprite;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;->SPRITE_GROUP:Ljava/lang/String;

    .line 33
    const-class v0, Lorg/catrobat/catroid/content/GroupItemSprite;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;->SPRITE_GROUP_ITEM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    sget-object v1, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;->SPRITE_BASE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {v1, p2}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;->SPRITE_GROUP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    new-instance v1, Lorg/catrobat/catroid/content/GroupSprite;

    invoke-direct {v1, p2}, Lorg/catrobat/catroid/content/GroupSprite;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 46
    :cond_1
    sget-object v1, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;->SPRITE_GROUP_ITEM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    new-instance v1, Lorg/catrobat/catroid/content/GroupItemSprite;

    invoke-direct {v1, p2}, Lorg/catrobat/catroid/content/GroupItemSprite;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 50
    :cond_2
    :goto_0
    return-object v0
.end method
