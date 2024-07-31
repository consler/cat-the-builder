.class final Landroidx/mediarouter/app/MediaRouterThemeHelper;
.super Ljava/lang/Object;
.source "MediaRouterThemeHelper.java"


# static fields
.field static final COLOR_DARK_ON_LIGHT_BACKGROUND:I = -0x22000000

.field private static final COLOR_DARK_ON_LIGHT_BACKGROUND_RES_ID:I

.field static final COLOR_WHITE_ON_DARK_BACKGROUND:I = -0x1

.field private static final MIN_CONTRAST:F = 3.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget v0, Landroidx/mediarouter/R$color;->mr_dynamic_dialog_icon_light:I

    sput v0, Landroidx/mediarouter/app/MediaRouterThemeHelper;->COLOR_DARK_ON_LIGHT_BACKGROUND_RES_ID:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static createThemedButtonContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 110
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    .line 111
    .local v0, "style":I
    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v1

    .line 115
    :cond_0
    return-object p0
.end method

.method static createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I
    .param p2, "alertDialog"    # Z

    .line 135
    if-nez p1, :cond_1

    .line 136
    if-nez p2, :cond_0

    sget v0, Landroidx/appcompat/R$attr;->dialogTheme:I

    goto :goto_0

    :cond_0
    sget v0, Landroidx/appcompat/R$attr;->alertDialogTheme:I

    :goto_0
    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result p1

    .line 141
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 144
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 148
    :cond_2
    return-object p0
.end method

.method static createThemedDialogStyle(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    .line 154
    .local v0, "theme":I
    if-nez v0, :cond_0

    .line 156
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v0

    .line 159
    :cond_0
    return v0
.end method

.method static getButtonTextColor(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 185
    sget v0, Landroidx/appcompat/R$attr;->colorPrimary:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 187
    .local v0, "primaryColor":I
    const v2, 0x1010031

    invoke-static {p0, v1, v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    .line 189
    .local v2, "backgroundColor":I
    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 191
    sget v3, Landroidx/appcompat/R$attr;->colorAccent:I

    invoke-static {p0, v1, v3}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v1

    return v1

    .line 193
    :cond_0
    return v0
.end method

.method static getCheckBoxDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    sget v0, Landroidx/mediarouter/R$drawable;->mr_cast_checkbox:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByDrawableId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getControllerColor(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .line 175
    sget v0, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-static {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 177
    .local v0, "primaryColor":I
    const/4 v1, -0x1

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 179
    return v1

    .line 181
    :cond_0
    const/high16 v1, -0x22000000

    return v1
.end method

.method static getDefaultDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteDefaultIconDrawable:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getDisabledAlpha(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 169
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 170
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 170
    :goto_0
    return v1
.end method

.method private static getIconByAttrId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    sget v2, Landroidx/mediarouter/app/MediaRouterThemeHelper;->COLOR_DARK_ON_LIGHT_BACKGROUND_RES_ID:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 98
    .local v2, "tintColor":I
    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 100
    .end local v2    # "tintColor":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return-object v1
.end method

.method private static getIconByDrawableId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I

    .line 79
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget v1, Landroidx/mediarouter/app/MediaRouterThemeHelper;->COLOR_DARK_ON_LIGHT_BACKGROUND_RES_ID:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 84
    .local v1, "tintColor":I
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 86
    .end local v1    # "tintColor":I
    :cond_0
    return-object v0
.end method

.method static getMuteButtonDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    sget v0, Landroidx/mediarouter/R$drawable;->mr_cast_mute_button:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByDrawableId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getRouterThemeId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 306
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, -0x22000000

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 307
    invoke-static {p0, v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 308
    sget v0, Landroidx/mediarouter/R$style;->Theme_MediaRouter_Light:I

    .local v0, "themeId":I
    goto :goto_0

    .line 310
    .end local v0    # "themeId":I
    :cond_0
    sget v0, Landroidx/mediarouter/R$style;->Theme_MediaRouter_Light_DarkControlPanel:I

    .restart local v0    # "themeId":I
    goto :goto_0

    .line 313
    .end local v0    # "themeId":I
    :cond_1
    invoke-static {p0, v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 314
    sget v0, Landroidx/mediarouter/R$style;->Theme_MediaRouter_LightControlPanel:I

    .restart local v0    # "themeId":I
    goto :goto_0

    .line 316
    .end local v0    # "themeId":I
    :cond_2
    sget v0, Landroidx/mediarouter/R$style;->Theme_MediaRouter:I

    .line 319
    .restart local v0    # "themeId":I
    :goto_0
    return v0
.end method

.method static getSpeakerDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteSpeakerIconDrawable:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getSpeakerGroupDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteSpeakerGroupIconDrawable:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getStyledAttributes(Landroid/content/Context;)Landroid/content/res/TypedArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Landroidx/mediarouter/R$attr;->mediaRouteDefaultIconDrawable:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroidx/mediarouter/R$attr;->mediaRouteTvIconDrawable:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Landroidx/mediarouter/R$attr;->mediaRouteSpeakerIconDrawable:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Landroidx/mediarouter/R$attr;->mediaRouteSpeakerGroupIconDrawable:I

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    return-object v0
.end method

.method private static getThemeColor(Landroid/content/Context;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I
    .param p2, "attr"    # I

    .line 287
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 288
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 289
    .local v1, "attrs":[I
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 290
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 291
    .local v2, "color":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    if-eqz v2, :cond_0

    .line 293
    return v2

    .line 296
    .end local v1    # "attrs":[I
    .end local v2    # "color":I
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 297
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 298
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 301
    :cond_1
    iget v0, v1, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method static getThemeResource(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 164
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 165
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static getTvDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteTvIconDrawable:I

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static isLightTheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 281
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 282
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static setDialogBackgroundColor(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "dialogView":Landroid/view/View;
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroidx/mediarouter/R$color;->mr_dynamic_dialog_background_light:I

    goto :goto_0

    :cond_0
    sget v1, Landroidx/mediarouter/R$color;->mr_dynamic_dialog_background_dark:I

    :goto_0
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 210
    .local v1, "backgroundColor":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 211
    return-void
.end method

.method static setIndeterminateProgressBarColor(Landroid/content/Context;Landroid/widget/ProgressBar;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .line 270
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroidx/mediarouter/R$color;->mr_cast_progressbar_progress_and_thumb_light:I

    goto :goto_0

    :cond_1
    sget v0, Landroidx/mediarouter/R$color;->mr_cast_progressbar_progress_and_thumb_dark:I

    :goto_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 276
    .local v0, "progressColor":I
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 278
    return-void
.end method

.method static setMediaControlsBackgroundColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mainControls"    # Landroid/view/View;
    .param p2, "groupControls"    # Landroid/view/View;
    .param p3, "hasGroup"    # Z

    .line 215
    sget v0, Landroidx/appcompat/R$attr;->colorPrimary:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 217
    .local v0, "primaryColor":I
    sget v2, Landroidx/appcompat/R$attr;->colorPrimaryDark:I

    invoke-static {p0, v1, v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    .line 219
    .local v2, "primaryDarkColor":I
    if-eqz p3, :cond_0

    invoke-static {p0, v1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v1

    const/high16 v3, -0x22000000

    if-ne v1, v3, :cond_0

    .line 222
    move v2, v0

    .line 223
    const/4 v0, -0x1

    .line 225
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method static setVolumeSliderColor(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeSlider"    # Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 255
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget v0, Landroidx/mediarouter/R$color;->mr_cast_progressbar_progress_and_thumb_light:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 258
    .local v0, "progressAndThumbColor":I
    sget v1, Landroidx/mediarouter/R$color;->mr_cast_progressbar_background_light:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .local v1, "backgroundColor":I
    goto :goto_0

    .line 261
    .end local v0    # "progressAndThumbColor":I
    .end local v1    # "backgroundColor":I
    :cond_0
    sget v0, Landroidx/mediarouter/R$color;->mr_cast_progressbar_progress_and_thumb_dark:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 263
    .restart local v0    # "progressAndThumbColor":I
    sget v1, Landroidx/mediarouter/R$color;->mr_cast_progressbar_background_dark:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 266
    .restart local v1    # "backgroundColor":I
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setColor(II)V

    .line 267
    return-void
.end method

.method static setVolumeSliderColor(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteVolumeSlider;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeSlider"    # Landroidx/mediarouter/app/MediaRouteVolumeSlider;
    .param p2, "backgroundView"    # Landroid/view/View;

    .line 239
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v0

    .line 240
    .local v0, "controllerColor":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 243
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 244
    .local v1, "backgroundColor":I
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    .line 246
    .end local v1    # "backgroundColor":I
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setColor(I)V

    .line 247
    return-void
.end method
