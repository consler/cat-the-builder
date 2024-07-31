.class public abstract Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;
.super Lorg/catrobat/catroid/content/actions/EventAction;
.source "SingleSpriteEventAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R!\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;",
        "Lorg/catrobat/catroid/content/actions/EventAction;",
        "()V",
        "receivingSprites",
        "",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getReceivingSprites",
        "()Ljava/util/List;",
        "receivingSprites$delegate",
        "Lkotlin/Lazy;",
        "sprite",
        "getSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setSprite",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final receivingSprites$delegate:Lkotlin/Lazy;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/EventAction;-><init>()V

    .line 29
    new-instance v0, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction$receivingSprites$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction$receivingSprites$2;-><init>(Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;->receivingSprites$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method protected getReceivingSprites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;->receivingSprites$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method
