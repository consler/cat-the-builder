.class public final synthetic Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$fQNwLj8CP0QqIjtW8KpSqOY97IA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

.field public final synthetic f$1:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$fQNwLj8CP0QqIjtW8KpSqOY97IA;->f$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$fQNwLj8CP0QqIjtW8KpSqOY97IA;->f$1:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$fQNwLj8CP0QqIjtW8KpSqOY97IA;->f$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$fQNwLj8CP0QqIjtW8KpSqOY97IA;->f$1:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-static {v0, v1, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->lambda$new$2(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Lorg/catrobat/catroid/formulaeditor/UserVariable;Landroid/content/DialogInterface;)V

    return-void
.end method
