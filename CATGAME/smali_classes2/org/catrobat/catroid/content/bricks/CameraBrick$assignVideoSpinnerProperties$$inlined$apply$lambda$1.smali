.class final Lorg/catrobat/catroid/content/bricks/CameraBrick$assignVideoSpinnerProperties$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CameraBrick.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/bricks/CameraBrick;->assignVideoSpinnerProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "position",
        "",
        "invoke",
        "org/catrobat/catroid/content/bricks/CameraBrick$assignVideoSpinnerProperties$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/CameraBrick;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/CameraBrick;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/CameraBrick$assignVideoSpinnerProperties$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/content/bricks/CameraBrick;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/CameraBrick$assignVideoSpinnerProperties$$inlined$apply$lambda$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 2
    .param p1, "position"    # I

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/CameraBrick$assignVideoSpinnerProperties$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/content/bricks/CameraBrick;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/catrobat/catroid/content/bricks/CameraBrick;->access$setSpinnerSelectionON$p(Lorg/catrobat/catroid/content/bricks/CameraBrick;Z)V

    .line 48
    return-void
.end method
