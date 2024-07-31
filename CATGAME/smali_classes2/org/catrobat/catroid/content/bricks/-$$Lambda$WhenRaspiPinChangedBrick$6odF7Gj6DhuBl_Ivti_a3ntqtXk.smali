.class public final synthetic Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$6odF7Gj6DhuBl_Ivti_a3ntqtXk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;

.field public final synthetic f$1:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$6odF7Gj6DhuBl_Ivti_a3ntqtXk;->f$0:Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$6odF7Gj6DhuBl_Ivti_a3ntqtXk;->f$1:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$6odF7Gj6DhuBl_Ivti_a3ntqtXk;->f$0:Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$WhenRaspiPinChangedBrick$6odF7Gj6DhuBl_Ivti_a3ntqtXk;->f$1:Landroid/widget/Spinner;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;->lambda$setupPinSpinner$0$WhenRaspiPinChangedBrick(Landroid/widget/Spinner;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
