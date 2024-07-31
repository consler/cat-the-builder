.class public Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;
.super Landroid/app/Fragment;
.source "AccessibilityProfilesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;
    }
.end annotation


# static fields
.field public static final SETTINGS_FRAGMENT_INTENT_KEY:Ljava/lang/String; = "rollBackToAccessibilityFragment"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private parent:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 90
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    const v2, 0x7f0a032d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V

    .line 93
    .local v0, "viewHolder":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802a8

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f12066e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->subtitle:Landroid/widget/TextView;

    const v2, 0x7f120668

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    new-instance v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    const v4, 0x7f0a0336

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V

    move-object v0, v1

    .line 100
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f12066f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->subtitle:Landroid/widget/TextView;

    const v2, 0x7f120669

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 106
    new-instance v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V

    move-object v0, v1

    .line 107
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802a7

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f12066d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->subtitle:Landroid/widget/TextView;

    const v2, 0x7f120667

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    new-instance v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    const v3, 0x7f0a0383

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V

    move-object v0, v1

    .line 113
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802a9

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f120670

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->subtitle:Landroid/widget/TextView;

    const v2, 0x7f12066a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    new-instance v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    const v3, 0x7f0a0498

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V

    move-object v0, v1

    .line 119
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802aa

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f120671

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->subtitle:Landroid/widget/TextView;

    const v2, 0x7f12066b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    new-instance v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    const v3, 0x7f0a0611

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V

    move-object v0, v1

    .line 125
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802ab

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f120672

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v1, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->subtitle:Landroid/widget/TextView;

    const v2, 0x7f12066c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 131
    const-string v2, "AccessibilityProfile"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, "selectedProfileViewId":I
    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V

    iget-object v2, v2, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 134
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 138
    new-instance v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;Landroid/view/View;)V

    iget-object v0, v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment$AccessibilityProfileViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->fromCurrentPreferences(Landroid/content/SharedPreferences;)Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    move-result-object v2

    .line 142
    .local v2, "currentProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    const-string v3, "accessibility_profile_is_custom"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->saveAsCustomProfile(Landroid/content/SharedPreferences;)V

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 145
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 146
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const-string v6, "accessibility_element_spacing"

    const-string v7, "accessibility_category_icons"

    const-string v8, "accessibility_high_contrast"

    sparse-switch v5, :sswitch_data_0

    .line 171
    new-instance v3, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;-><init>([Ljava/lang/String;)V

    .local v3, "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    goto :goto_0

    .line 161
    .end local v3    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    :sswitch_0
    new-instance v3, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    const-string v4, "accessibility_beginner_bricks"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;-><init>([Ljava/lang/String;)V

    .line 162
    .restart local v3    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    goto :goto_0

    .line 158
    .end local v3    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    :sswitch_1
    new-instance v3, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    const-string v4, "accessibility_large_text"

    const-string v5, "accessibility_category_icons_big"

    filled-new-array {v4, v8, v7, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;-><init>([Ljava/lang/String;)V

    .line 159
    .restart local v3    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    goto :goto_0

    .line 155
    .end local v3    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    :sswitch_2
    new-instance v3, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    const-string v4, "accessibility_dragndrop_delay"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;-><init>([Ljava/lang/String;)V

    .line 156
    .restart local v3    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    goto :goto_0

    .line 164
    .end local v3    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    :sswitch_3
    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->fromCustomProfile(Landroid/content/SharedPreferences;)Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    move-result-object v4

    .line 165
    .local v4, "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 166
    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 167
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    move-object v3, v4

    goto :goto_0

    .line 152
    .end local v4    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    :sswitch_4
    new-instance v3, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;-><init>([Ljava/lang/String;)V

    .line 153
    .restart local v3    # "newProfile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    nop

    .line 174
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const-string v6, "AccessibilityProfile"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 176
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    invoke-virtual {v3, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setAsCurrent(Landroid/content/SharedPreferences;)V

    .line 179
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->startActivity(Landroid/content/Intent;)V

    .line 180
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lorg/catrobat/catroid/ui/SettingsActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v4, "settingsIntent":Landroid/content/Intent;
    const-string v5, "rollBackToAccessibilityFragment"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f120028

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V

    .line 185
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0053 -> :sswitch_4
        0x7f0a032d -> :sswitch_3
        0x7f0a0383 -> :sswitch_2
        0x7f0a0498 -> :sswitch_1
        0x7f0a0611 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    const v0, 0x7f0d0159

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->parent:Landroid/view/View;

    .line 85
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 190
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfilesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 191
    const v1, 0x7f1206ae

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 192
    return-void
.end method
