.class final Lorg/catrobat/paintroid/WelcomeActivity$setUpUndoAndRedoButtons$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/WelcomeActivity;->setUpUndoAndRedoButtons(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $description:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic $head:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpUndoAndRedoButtons$2;->$head:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpUndoAndRedoButtons$2;->$description:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .line 121
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpUndoAndRedoButtons$2;->$head:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->REDO:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->getNameResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 122
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpUndoAndRedoButtons$2;->$description:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->REDO:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->getHelpTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 123
    return-void
.end method
