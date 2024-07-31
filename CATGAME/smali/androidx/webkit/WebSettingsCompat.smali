.class public Landroidx/webkit/WebSettingsCompat;
.super Ljava/lang/Object;
.source "WebSettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebSettingsCompat$ForceDarkStrategy;,
        Landroidx/webkit/WebSettingsCompat$ForceDark;,
        Landroidx/webkit/WebSettingsCompat$MenuItemFlags;
    }
.end annotation


# static fields
.field public static final FORCE_DARK_AUTO:I = 0x1

.field public static final FORCE_DARK_OFF:I = 0x0

.field public static final FORCE_DARK_ON:I = 0x2

.field public static final PREFER_WEB_THEME_OVER_USER_AGENT_DARKENING:I = 0x2

.field public static final USER_AGENT_DARKENING_ONLY:I = 0x0

.field public static final WEB_THEME_DARKENING_ONLY:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;
    .locals 1
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 495
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertSettings(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getDisabledActionModeMenuItems(Landroid/webkit/WebSettings;)I
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 218
    nop

    .line 219
    const-string v0, "DISABLED_ACTION_MODE_MENU_ITEMS"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 220
    .local v0, "webviewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getDisabledActionModeMenuItems()I

    move-result v1

    return v1

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getDisabledActionModeMenuItems()I

    move-result v1

    return v1

    .line 225
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getForceDark(Landroid/webkit/WebSettings;)I
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 375
    nop

    .line 376
    const-string v0, "FORCE_DARK"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 377
    .local v0, "webViewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getForceDark()I

    move-result v1

    return v1

    .line 379
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getForceDark()I

    move-result v1

    return v1

    .line 382
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getForceDarkStrategy(Landroid/webkit/WebSettings;)I
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 485
    nop

    .line 486
    const-string v0, "FORCE_DARK_STRATEGY"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 487
    .local v0, "webViewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getForceDark()I

    move-result v1

    return v1

    .line 490
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getOffscreenPreRaster(Landroid/webkit/WebSettings;)Z
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 92
    nop

    .line 93
    const-string v0, "OFF_SCREEN_PRERASTER"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 94
    .local v0, "webviewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getOffscreenPreRaster()Z

    move-result v1

    return v1

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getOffscreenPreRaster()Z

    move-result v1

    return v1

    .line 99
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getSafeBrowsingEnabled(Landroid/webkit/WebSettings;)Z
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 152
    nop

    .line 153
    const-string v0, "SAFE_BROWSING_ENABLE"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 154
    .local v0, "webviewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getSafeBrowsingEnabled()Z

    move-result v1

    return v1

    .line 156
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getSafeBrowsingEnabled()Z

    move-result v1

    return v1

    .line 159
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setDisabledActionModeMenuItems(Landroid/webkit/WebSettings;I)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "menuItems"    # I

    .line 192
    nop

    .line 193
    const-string v0, "DISABLED_ACTION_MODE_MENU_ITEMS"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 194
    .local v0, "webviewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setDisabledActionModeMenuItems(I)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setDisabledActionModeMenuItems(I)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setForceDark(Landroid/webkit/WebSettings;I)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "forceDarkMode"    # I

    .line 346
    nop

    .line 347
    const-string v0, "FORCE_DARK"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 348
    .local v0, "webViewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setForceDark(I)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setForceDark(I)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setForceDarkStrategy(Landroid/webkit/WebSettings;I)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "forceDarkBehavior"    # I

    .line 455
    nop

    .line 456
    const-string v0, "FORCE_DARK_STRATEGY"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 457
    .local v0, "webViewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setForceDarkStrategy(I)V

    .line 462
    return-void

    .line 460
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setOffscreenPreRaster(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "enabled"    # Z

    .line 65
    nop

    .line 66
    const-string v0, "OFF_SCREEN_PRERASTER"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 67
    .local v0, "webviewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setOffscreenPreRaster(Z)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setSafeBrowsingEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "enabled"    # Z

    .line 126
    nop

    .line 127
    const-string v0, "SAFE_BROWSING_ENABLE"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 128
    .local v0, "webviewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setSafeBrowsingEnabled(Z)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setWillSuppressErrorPage(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "suppressed"    # Z

    .line 251
    nop

    .line 252
    const-string v0, "SUPPRESS_ERROR_PAGE"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 253
    .local v0, "webviewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setWillSuppressErrorPage(Z)V

    .line 258
    return-void

    .line 256
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static willSuppressErrorPage(Landroid/webkit/WebSettings;)Z
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .line 280
    nop

    .line 281
    const-string v0, "SUPPRESS_ERROR_PAGE"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 282
    .local v0, "webviewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-static {p0}, Landroidx/webkit/WebSettingsCompat;->getAdapter(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->willSuppressErrorPage()Z

    move-result v1

    return v1

    .line 285
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
