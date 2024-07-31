.class final Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction$receivingSprites$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SingleSpriteEventAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lorg/catrobat/catroid/content/Sprite;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleSpriteEventAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleSpriteEventAction.kt\norg/catrobat/catroid/content/actions/SingleSpriteEventAction$receivingSprites$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1#2:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lorg/catrobat/catroid/content/Sprite;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction$receivingSprites$2;->this$0:Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction$receivingSprites$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction$receivingSprites$2;->this$0:Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    .local v0, "it":Lorg/catrobat/catroid/content/Sprite;
    const/4 v1, 0x0

    .line 30
    .local v1, "$i$a$-let-SingleSpriteEventAction$receivingSprites$2$1":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "it":Lorg/catrobat/catroid/content/Sprite;
    .end local v1    # "$i$a$-let-SingleSpriteEventAction$receivingSprites$2$1":I
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
