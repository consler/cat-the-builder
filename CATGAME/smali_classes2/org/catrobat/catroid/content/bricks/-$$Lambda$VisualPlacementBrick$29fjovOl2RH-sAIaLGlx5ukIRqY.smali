.class public final synthetic Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;

.field public final synthetic f$1:Landroidx/fragment/app/Fragment;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;->f$0:Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;->f$1:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;->f$0:Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;->f$1:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$VisualPlacementBrick$29fjovOl2RH-sAIaLGlx5ukIRqY;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->lambda$showDialog$0$VisualPlacementBrick(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method
