.class final Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$7;
.super Ljava/lang/Object;
.source "ProjectActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectActivity;->handleAddSpriteButton()V
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
.field final synthetic $alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ProjectActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$7;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$7;->$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .line 431
    nop

    .line 435
    nop

    .line 431
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;

    .line 432
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$7;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 433
    const v3, 0x7f12050c

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/ProjectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.impor\u2026te_from_project_launcher)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-direct {v0, v2, v1}, Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 435
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;->startActivityForResult(I)V

    .line 436
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$7;->$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 437
    return-void
.end method
