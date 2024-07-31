.class public Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
.super Ljava/lang/Object;
.source "AccessibilityProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile$AccessibilityFlags;
    }
.end annotation


# static fields
.field public static final BEGINNER_BRICKS:Ljava/lang/String; = "accessibility_beginner_bricks"

.field private static final BOOLEAN_PREFERENCES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_ACCESSIBILITY_PROFILE:Ljava/lang/String; = "custom_accessibility_profile"

.field public static final DRAGNDROP_DELAY:Ljava/lang/String; = "accessibility_dragndrop_delay"

.field static final DYSLEXIC:Ljava/lang/String; = "dyslexic"

.field static final ELEMENT_SPACING:Ljava/lang/String; = "accessibility_element_spacing"

.field private static final FONT_STYLE:Ljava/lang/String; = "accessibility_font_style"

.field static final HIGH_CONTRAST:Ljava/lang/String; = "accessibility_high_contrast"

.field static final ICONS:Ljava/lang/String; = "accessibility_category_icons"

.field static final ICON_HIGH_CONTRAST:Ljava/lang/String; = "accessibility_category_icons_high_contrast"

.field static final LARGE_ICONS:Ljava/lang/String; = "accessibility_category_icons_big"

.field static final LARGE_TEXT:Ljava/lang/String; = "accessibility_large_text"

.field static final SANS_SERIF:Ljava/lang/String; = "sans_serif"

.field static final SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private final setPreferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "accessibility_large_text"

    const-string v2, "accessibility_high_contrast"

    const-string v3, "accessibility_category_icons"

    const-string v4, "accessibility_category_icons_big"

    const-string v5, "accessibility_category_icons_high_contrast"

    const-string v6, "accessibility_element_spacing"

    const-string v7, "accessibility_beginner_bricks"

    const-string v8, "accessibility_dragndrop_delay"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->BOOLEAN_PREFERENCES:Ljava/util/Set;

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "preferences":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_0
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "preferences"    # [Ljava/lang/String;

    .line 76
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;-><init>(Ljava/util/Collection;)V

    .line 77
    return-void
.end method

.method private clearCurrent(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->BOOLEAN_PREFERENCES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .local v2, "preference":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    .end local v2    # "preference":Ljava/lang/String;
    goto :goto_0

    .line 106
    :cond_0
    const-string v1, "accessibility_font_style"

    const-string v2, "sans_serif"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    return-void
.end method

.method public static fromCurrentPreferences(Landroid/content/SharedPreferences;)Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    .locals 4
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v0, "preferences":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->BOOLEAN_PREFERENCES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "preference":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "preference":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    const-string v1, "accessibility_font_style"

    const-string v2, "sans_serif"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "fontStyle":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public static fromCustomProfile(Landroid/content/SharedPreferences;)Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    .locals 3
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 92
    new-instance v0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    const-string v1, "custom_accessibility_profile"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public applyAccessibilityStyles(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v1, "accessibility_large_text"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 127
    const v0, 0x7f130165

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v2, "accessibility_high_contrast"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const v0, 0x7f130155

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v2, "accessibility_element_spacing"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const v0, 0x7f1301c4

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 135
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v2, "accessibility_category_icons_high_contrast"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    const v0, 0x7f13014d

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 138
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v2, "accessibility_category_icons"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    const v0, 0x7f130150

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 141
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v2, "accessibility_category_icons_big"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    const v0, 0x7f13014e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 144
    :cond_5
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v2, "sans_serif"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    const v0, 0x7f130162

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 147
    :cond_6
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v2, "serif"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    const v0, 0x7f130164

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 150
    :cond_7
    iget-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    const-string v2, "dyslexic"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    const v0, 0x7f130161

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 153
    :cond_8
    return-void
.end method

.method saveAsCustomProfile(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 96
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    .line 97
    const-string v2, "custom_accessibility_profile"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method

.method public setAsCurrent(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 111
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->clearCurrent(Landroid/content/SharedPreferences;)V

    .line 112
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->setPreferences:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "preference":Ljava/lang/String;
    const-string v3, "serif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    const-string v3, "dyslexic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    const-string v3, "sans_serif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 117
    :cond_1
    :goto_1
    const-string v3, "accessibility_font_style"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    .end local v2    # "preference":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method
