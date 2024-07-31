.class Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;
.super Ljava/lang/Object;
.source "AccessibilityProfilesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityProfileViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field radioButton:Landroid/widget/RadioButton;

.field subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;

.field title:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->this$0:Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->view:Landroid/view/View;

    .line 74
    const p1, 0x7f0a0567

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 75
    const p1, 0x7f0a03e4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->imageView:Landroid/widget/ImageView;

    .line 76
    const p1, 0x7f0a0615

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->title:Landroid/widget/TextView;

    .line 77
    const p1, 0x7f0a05e7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->subtitle:Landroid/widget/TextView;

    .line 78
    return-void
.end method
