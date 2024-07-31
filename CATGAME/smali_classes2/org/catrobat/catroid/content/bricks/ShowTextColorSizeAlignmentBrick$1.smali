.class Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;
.super Ljava/lang/Object;
.source "ShowTextColorSizeAlignmentBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->getView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    .line 130
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 145
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p2, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;

    .line 138
    if-eqz p2, :cond_0

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    invoke-static {p2}, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;->access$100(Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick$AlignmentStyle;)I

    move-result v1

    iput v1, v0, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;->alignmentSelection:I

    .line 141
    :cond_0
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 149
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 134
    return-void
.end method
