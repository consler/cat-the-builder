.class Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 933
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 945
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2100(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 948
    .local v2, "child":Lcom/google/android/material/bottomappbar/BottomAppBar;
    if-eqz v2, :cond_3

    instance-of v3, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_0

    goto :goto_1

    .line 953
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 955
    .local v3, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    iget-object v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2200(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    .line 956
    iget-object v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2200(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 959
    .local v4, "height":I
    invoke-virtual {v2, v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabDiameter(I)Z

    .line 961
    nop

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 966
    .local v5, "fabLayoutParams":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v6, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v6}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2300(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I

    move-result v6

    if-nez v6, :cond_2

    .line 969
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    .line 970
    .local v6, "bottomShadowPadding":I
    nop

    .line 972
    invoke-virtual {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fab_bottom_margin:I

    .line 973
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 975
    .local v7, "bottomMargin":I
    sub-int v8, v7, v6

    .line 976
    .local v8, "minBottomMargin":I
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2400(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v9

    add-int/2addr v9, v8

    iput v9, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 977
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2500(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v9

    iput v9, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    .line 978
    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v9

    iput v9, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    .line 979
    invoke-static {v3}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    .line 980
    .local v9, "isRtl":Z
    if-eqz v9, :cond_1

    .line 981
    iget v10, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 983
    :cond_1
    iget v10, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    .line 986
    .end local v6    # "bottomShadowPadding":I
    .end local v7    # "bottomMargin":I
    .end local v8    # "minBottomMargin":I
    .end local v9    # "isRtl":Z
    :cond_2
    :goto_0
    return-void

    .line 949
    .end local v3    # "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .end local v4    # "height":I
    .end local v5    # "fabLayoutParams":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_3
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 950
    return-void
.end method
