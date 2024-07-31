.class public final synthetic Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$Ge1aUAoHOhgsnOnqbiagG7MS-a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

.field public final synthetic f$1:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$Ge1aUAoHOhgsnOnqbiagG7MS-a0;->f$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$Ge1aUAoHOhgsnOnqbiagG7MS-a0;->f$1:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$Ge1aUAoHOhgsnOnqbiagG7MS-a0;->f$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$Ge1aUAoHOhgsnOnqbiagG7MS-a0;->f$1:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-static {v0, v1, p1, p2}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->lambda$new$1(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Lorg/catrobat/catroid/formulaeditor/UserVariable;Landroid/content/DialogInterface;I)V

    return-void
.end method
