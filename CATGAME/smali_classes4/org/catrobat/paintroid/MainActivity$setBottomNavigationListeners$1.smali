.class final Lorg/catrobat/paintroid/MainActivity$setBottomNavigationListeners$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/MainActivity;->setBottomNavigationListeners(Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onNavigationItemSelected"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/MainActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity$setBottomNavigationListeners$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 530
    sget v1, Lorg/catrobat/paintroid/R$id;->action_tools:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$setBottomNavigationListeners$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/MainActivity;->access$getPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->actionToolsClicked()V

    goto :goto_0

    .line 531
    :cond_0
    sget v1, Lorg/catrobat/paintroid/R$id;->action_current_tool:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$setBottomNavigationListeners$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/MainActivity;->access$getPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->actionCurrentToolClicked()V

    goto :goto_0

    .line 532
    :cond_1
    sget v1, Lorg/catrobat/paintroid/R$id;->action_color_picker:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$setBottomNavigationListeners$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/MainActivity;->access$getPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showColorPickerClicked()V

    goto :goto_0

    .line 533
    :cond_2
    sget v1, Lorg/catrobat/paintroid/R$id;->action_layers:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$setBottomNavigationListeners$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/MainActivity;->access$getPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showLayerMenuClicked()V

    .line 535
    :goto_0
    nop

    .line 536
    const/4 v0, 0x1

    return v0

    .line 534
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
