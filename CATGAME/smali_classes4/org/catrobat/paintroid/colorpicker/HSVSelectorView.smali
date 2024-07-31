.class public final Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "HSVSelectorView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "hsvColorPickerView",
        "Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;",
        "getHsvColorPickerView",
        "()Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;",
        "setSelectedColor",
        "",
        "color",
        "",
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final hsvColorPickerView:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;
    const/4 v2, 0x0

    .line 28
    .local v2, "$i$a$-apply-HSVSelectorView$hsvColorPickerView$1":I
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 29
    nop

    .line 30
    nop

    .line 28
    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    nop

    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;
    .end local v2    # "$i$a$-apply-HSVSelectorView$hsvColorPickerView$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->hsvColorPickerView:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    .line 38
    nop

    .line 39
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;
    const/4 v2, 0x0

    .line 28
    .local v2, "$i$a$-apply-HSVSelectorView$hsvColorPickerView$1":I
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 29
    nop

    .line 30
    nop

    .line 28
    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    nop

    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;
    .end local v2    # "$i$a$-apply-HSVSelectorView$hsvColorPickerView$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->hsvColorPickerView:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    .line 38
    nop

    .line 39
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final getHsvColorPickerView()Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->hsvColorPickerView:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    return-object v0
.end method

.method public final setSelectedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->hsvColorPickerView:Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setSelectedColor(I)V

    .line 44
    return-void
.end method
