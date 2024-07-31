.class public final synthetic Lorg/catrobat/catroid/content/bricks/-$$Lambda$FlashBrick$-O0jUWqBKmrQUMJySPA_WndBLIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/bricks/FlashBrick;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/FlashBrick;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$FlashBrick$-O0jUWqBKmrQUMJySPA_WndBLIo;->f$0:Lorg/catrobat/catroid/content/bricks/FlashBrick;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$FlashBrick$-O0jUWqBKmrQUMJySPA_WndBLIo;->f$0:Lorg/catrobat/catroid/content/bricks/FlashBrick;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/FlashBrick;->lambda$getView$0$FlashBrick(Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
