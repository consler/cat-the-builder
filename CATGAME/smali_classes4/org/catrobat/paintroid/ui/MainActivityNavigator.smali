.class public final Lorg/catrobat/paintroid/ui/MainActivityNavigator;
.super Ljava/lang/Object;
.source "MainActivityNavigator.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivityNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivityNavigator.kt\norg/catrobat/paintroid/ui/MainActivityNavigator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,528:1\n1#2:529\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J#\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u000fH\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u000fH\u0002J\u0008\u0010\u001c\u001a\u00020\u000cH\u0016J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u001b\u0010\u001e\u001a\u00020\u00082\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000fH\u0002J\u0008\u0010\"\u001a\u00020\u000cH\u0016J\u0008\u0010#\u001a\u00020\u000cH\u0016J\u0012\u0010$\u001a\u00020\u000c2\u0008\u0010%\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010&\u001a\u00020\u000cH\u0016J\u0008\u0010\'\u001a\u00020\u000cH\u0016J\u0008\u0010(\u001a\u00020\u000cH\u0016J\u0010\u0010)\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020+H\u0002J\u0010\u0010,\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020-H\u0002J\u0008\u0010.\u001a\u00020\u000cH\u0016J\u0008\u0010/\u001a\u00020\u000cH\u0016J\u0008\u00100\u001a\u00020\u000cH\u0016J\u0008\u00101\u001a\u00020\u000cH\u0016J\u0008\u00102\u001a\u00020\u000cH\u0016J\u0018\u00103\u001a\u00020\u000c2\u0006\u0010*\u001a\u0002042\u0006\u0010\u001b\u001a\u00020\u000fH\u0002J\u0008\u00105\u001a\u00020\u000cH\u0016J\u001a\u00106\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000fH\u0002J\u0008\u00108\u001a\u00020\u000cH\u0016J\u0008\u00109\u001a\u00020\u000cH\u0016J\u0008\u0010:\u001a\u00020\u000cH\u0016J\u0008\u0010;\u001a\u00020\u000cH\u0016J\u0008\u0010<\u001a\u00020\u000cH\u0016J\u0008\u0010=\u001a\u00020\u000cH\u0016J\u0018\u0010>\u001a\u00020\u000c2\u0006\u0010?\u001a\u00020\u00112\u0006\u0010@\u001a\u00020\u0008H\u0016J\u0008\u0010A\u001a\u00020\u000cH\u0016J\u0008\u0010B\u001a\u00020\u000cH\u0016J\u0008\u0010C\u001a\u00020\u000cH\u0016J+\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020F2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010GJ\u0008\u0010H\u001a\u00020\u000cH\u0016J\u0008\u0010I\u001a\u00020\u000cH\u0016J\u0008\u0010J\u001a\u00020\u000cH\u0016J\u0008\u0010K\u001a\u00020\u000cH\u0016J \u0010L\u001a\u00020\u000c2\u0006\u0010?\u001a\u00020\u00112\u0006\u0010M\u001a\u00020\u00112\u0006\u0010@\u001a\u00020\u0008H\u0017J\u001a\u0010N\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010O\u001a\u00020\u000c2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010Q\u001a\u00020\u0011H\u0016J\u0018\u0010O\u001a\u00020\u000c2\u0006\u0010R\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020\u0011H\u0016J\u0018\u0010S\u001a\u00020\u000c2\u0006\u0010T\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\u0011H\u0016J\u0010\u0010V\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010W\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010X\u001a\u00020\u000c2\u0008\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J\u0010\u0010[\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u0014\u0010\n\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\\"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/MainActivityNavigator;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;",
        "mainActivity",
        "Lorg/catrobat/paintroid/MainActivity;",
        "toolReference",
        "Lorg/catrobat/paintroid/tools/ToolReference;",
        "(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolReference;)V",
        "isSdkAboveOrEqualM",
        "",
        "()Z",
        "isSdkAboveOrEqualQ",
        "askForPermission",
        "",
        "permissions",
        "",
        "",
        "requestCode",
        "",
        "([Ljava/lang/String;I)V",
        "broadcastAddPictureToGallery",
        "uri",
        "Landroid/net/Uri;",
        "dismissIndeterminateProgressDialog",
        "doIHavePermission",
        "permission",
        "findFragmentByTag",
        "Landroidx/fragment/app/Fragment;",
        "tag",
        "finishActivity",
        "getFileName",
        "isPermissionPermanentlyDenied",
        "([Ljava/lang/String;)Z",
        "openPlayStore",
        "applicationId",
        "rateUsClicked",
        "restoreFragmentListeners",
        "returnToPocketCode",
        "path",
        "sendFeedback",
        "setAntialiasingOnToolPaint",
        "setMaskFilterToNull",
        "setupCatroidMediaGalleryListeners",
        "dialog",
        "Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;",
        "setupColorPickerDialogListeners",
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;",
        "showAboutDialog",
        "showAdvancedSettingsDialog",
        "showCatrobatInformationDialog",
        "showCatroidMediaGallery",
        "showColorPickerDialog",
        "showDialogFragmentSafely",
        "Landroidx/fragment/app/DialogFragment;",
        "showFeedbackDialog",
        "showFragment",
        "fragment",
        "showImageImportDialog",
        "showIndeterminateProgressDialog",
        "showJpgInformationDialog",
        "showLikeUsDialog",
        "showLoadErrorDialog",
        "showOraInformationDialog",
        "showOverwriteDialog",
        "permissionCode",
        "isExport",
        "showPngInformationDialog",
        "showRateUsDialog",
        "showRequestPermanentlyDeniedPermissionRationaleDialog",
        "showRequestPermissionRationaleDialog",
        "permissionType",
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;",
        "(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)V",
        "showSaveBeforeFinishDialog",
        "showSaveBeforeLoadImageDialog",
        "showSaveBeforeNewImageDialog",
        "showSaveErrorDialog",
        "showSaveImageInformationDialogWhenStandalone",
        "imageNumber",
        "showScaleImageRequestDialog",
        "showToast",
        "resId",
        "duration",
        "msg",
        "showToolChangeToast",
        "offset",
        "idRes",
        "startImportImageActivity",
        "startLoadImageActivity",
        "startShareImageActivity",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "startWelcomeActivity",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final mainActivity:Lorg/catrobat/paintroid/MainActivity;

.field private final toolReference:Lorg/catrobat/paintroid/tools/ToolReference;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/MainActivity;Lorg/catrobat/paintroid/tools/ToolReference;)V
    .locals 1
    .param p1, "mainActivity"    # Lorg/catrobat/paintroid/MainActivity;
    .param p2, "toolReference"    # Lorg/catrobat/paintroid/tools/ToolReference;

    const-string v0, "mainActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolReference"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    return-void
.end method

.method public static final synthetic access$getMainActivity$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/MainActivity;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    .line 91
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-object v0
.end method

.method public static final synthetic access$getToolReference$p(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)Lorg/catrobat/paintroid/tools/ToolReference;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/MainActivityNavigator;

    .line 91
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    return-object v0
.end method

.method private final findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private final getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 174
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 175
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 178
    .local v2, "queryCursor":Landroid/database/Cursor;
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v3

    check-cast v5, Landroid/database/Cursor;

    .local v5, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 179
    .local v6, "$i$a$-use-MainActivityNavigator$getFileName$1":I
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    const-string v7, "_display_name"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 182
    :cond_0
    nop

    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v6    # "$i$a$-use-MainActivityNavigator$getFileName$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "queryCursor":Landroid/database/Cursor;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "queryCursor":Landroid/database/Cursor;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v4

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 184
    .end local v2    # "queryCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-nez v1, :cond_5

    .line 185
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 187
    .local v2, "cut":Ljava/lang/Integer;
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 188
    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    move-object v1, v0

    .line 191
    .end local v2    # "cut":Ljava/lang/Integer;
    :cond_5
    return-object v1

    .line 174
    .end local v1    # "result":Ljava/lang/Object;
    :cond_6
    return-object v0
.end method

.method private final openPlayStore(Ljava/lang/String;)V
    .locals 7
    .param p1, "applicationId"    # Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 157
    .local v0, "uriPlayStore":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    .local v1, "openPlayStore":Landroid/content/Intent;
    nop

    .line 159
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v3, v1}, Lorg/catrobat/paintroid/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v3

    .line 161
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    nop

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 161
    nop

    .line 163
    .local v4, "uriNoPlayStore":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v5

    .line 164
    .local v2, "noPlayStoreInstalled":Landroid/content/Intent;
    nop

    .line 165
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v5}, Lorg/catrobat/paintroid/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 164
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 167
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_0

    .line 168
    iget-object v6, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v6, v2}, Lorg/catrobat/paintroid/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    .end local v2    # "noPlayStoreInstalled":Landroid/content/Intent;
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "uriNoPlayStore":Landroid/net/Uri;
    .end local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    nop

    .line 171
    return-void
.end method

.method private final setupCatroidMediaGalleryListeners(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)V
    .locals 1
    .param p1, "dialog"    # Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    .line 139
    new-instance v0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupCatroidMediaGalleryListeners$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupCatroidMediaGalleryListeners$1;-><init>(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)V

    check-cast v0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    invoke-virtual {p1, v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->setMediaGalleryListener(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;)V

    .line 152
    return-void
.end method

.method private final setupColorPickerDialogListeners(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V
    .locals 2
    .param p1, "dialog"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    .line 129
    new-instance v0, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator$setupColorPickerDialogListeners$1;-><init>(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)V

    check-cast v0, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    invoke-virtual {p1, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->addOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V

    .line 135
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 135
    .local v1, "$i$a$-let-MainActivityNavigator$setupColorPickerDialogListeners$2":I
    invoke-virtual {p1, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-MainActivityNavigator$setupColorPickerDialogListeners$2":I
    :cond_0
    return-void
.end method

.method private final showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V
    .locals 2
    .param p1, "dialog"    # Landroidx/fragment/app/DialogFragment;
    .param p2, "tag"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "mainActivity.supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method private final showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "mainActivity.supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    nop

    .line 115
    nop

    .line 106
    nop

    .line 114
    nop

    .line 106
    nop

    .line 113
    nop

    .line 106
    nop

    .line 107
    nop

    .line 106
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 108
    sget v2, Lorg/catrobat/paintroid/R$anim;->slide_to_top:I

    .line 109
    sget v3, Lorg/catrobat/paintroid/R$anim;->slide_to_bottom:I

    .line 110
    sget v4, Lorg/catrobat/paintroid/R$anim;->slide_to_top:I

    .line 111
    sget v5, Lorg/catrobat/paintroid/R$anim;->slide_to_bottom:I

    .line 107
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 114
    sget v2, Lorg/catrobat/paintroid/R$id;->fragment_container:I

    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 116
    return-void
.end method

.method static synthetic showFragment$default(Lorg/catrobat/paintroid/ui/MainActivityNavigator;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 103
    const-string p2, "catroidmediagalleryfragment"

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public askForPermission([Ljava/lang/String;I)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 412
    return-void
.end method

.method public broadcastAddPictureToGallery(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 497
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 498
    return-void
.end method

.method public dismissIndeterminateProgressDialog()V
    .locals 1

    .line 357
    nop

    .line 358
    const-string v0, "indeterminateprogressdialogfragment"

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 357
    nop

    .line 359
    .local v0, "progressDialogFragment":Landroidx/fragment/app/DialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 360
    :cond_0
    return-void
.end method

.method public doIHavePermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    nop

    .line 416
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    check-cast v0, Landroid/content/Context;

    .line 417
    nop

    .line 415
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0
.end method

.method public finishActivity()V
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->finish()V

    .line 425
    return-void
.end method

.method public isPermissionPermanentlyDenied([Ljava/lang/String;)Z
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSdkAboveOrEqualM()Z
    .locals 2

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSdkAboveOrEqualQ()Z
    .locals 2

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rateUsClicked()V
    .locals 2

    .line 512
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mainActivity.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->openPlayStore(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public restoreFragmentListeners()V
    .locals 2

    .line 501
    const-string v0, "ColorPickerDialogTag"

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 502
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 503
    move-object v1, v0

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->setupColorPickerDialogListeners(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V

    .line 505
    :cond_0
    const-string v1, "catroidmediagalleryfragment"

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_1

    .line 507
    move-object v1, v0

    check-cast v1, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->setupCatroidMediaGalleryListeners(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)V

    .line 509
    :cond_1
    return-void
.end method

.method public returnToPocketCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "org.catrobat.extra.PAINTROID_PICTURE_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/catrobat/paintroid/MainActivity;->setResult(ILandroid/content/Intent;)V

    .line 366
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->finish()V

    .line 367
    return-void
.end method

.method public sendFeedback()V
    .locals 3

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mailto:support-paintroid@catrobat.org"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 342
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method public setAntialiasingOnToolPaint()V
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->setAntialiasing()V

    .line 517
    return-void
.end method

.method public setMaskFilterToNull()V
    .locals 4

    .line 520
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 521
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 522
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Lorg/catrobat/paintroid/tools/Tool;
    const/4 v1, 0x0

    .line 523
    .local v1, "$i$a$-let-MainActivityNavigator$setMaskFilterToNull$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/MainActivity;->getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;

    move-result-object v2

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 524
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/MainActivity;->getToolPaint()Lorg/catrobat/paintroid/tools/ToolPaint;

    move-result-object v2

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 525
    nop

    .line 522
    .end local v0    # "it":Lorg/catrobat/paintroid/tools/Tool;
    .end local v1    # "$i$a$-let-MainActivityNavigator$setMaskFilterToNull$1":I
    nop

    .line 526
    :cond_0
    return-void
.end method

.method public showAboutDialog()V
    .locals 3

    .line 263
    new-instance v0, Lorg/catrobat/paintroid/dialog/AboutDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/AboutDialog;-><init>()V

    .line 264
    .local v0, "about":Lorg/catrobat/paintroid/dialog/AboutDialog;
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "aboutdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/AboutDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public showAdvancedSettingsDialog()V
    .locals 3

    .line 292
    new-instance v0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;-><init>()V

    .line 293
    .local v0, "advancedSettingsDialog":Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;
    nop

    .line 294
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 295
    nop

    .line 293
    const-string v2, "advancedsettingsdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public showCatrobatInformationDialog()V
    .locals 3

    .line 332
    new-instance v0, Lorg/catrobat/paintroid/dialog/CatrobatImageInfoDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/CatrobatImageInfoDialog;-><init>()V

    .line 333
    .local v0, "catrobatInfoDialog":Lorg/catrobat/paintroid/dialog/CatrobatImageInfoDialog;
    nop

    .line 334
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 335
    nop

    .line 333
    const-string v2, "catrobatinformationdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/CatrobatImageInfoDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public showCatroidMediaGallery()V
    .locals 4

    .line 209
    const-string v0, "catroidmediagalleryfragment"

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    invoke-direct {v0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;-><init>()V

    .line 211
    .local v0, "fragment":Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;
    new-instance v1, Lorg/catrobat/paintroid/ui/MainActivityNavigator$showCatroidMediaGallery$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator$showCatroidMediaGallery$1;-><init>(Lorg/catrobat/paintroid/ui/MainActivityNavigator;)V

    check-cast v1, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->setMediaGalleryListener(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;)V

    .line 224
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2, v3}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showFragment$default(Lorg/catrobat/paintroid/ui/MainActivityNavigator;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 226
    .end local v0    # "fragment":Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;
    :cond_0
    return-void
.end method

.method public showColorPickerDialog()V
    .locals 7

    .line 195
    const-string v0, "ColorPickerDialogTag"

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->toolReference:Lorg/catrobat/paintroid/tools/ToolReference;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "it":Lorg/catrobat/paintroid/tools/Tool;
    const/4 v2, 0x0

    .line 197
    .local v2, "$i$a$-let-MainActivityNavigator$showColorPickerDialog$1":I
    sget-object v3, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

    .line 198
    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Tool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    .line 199
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v5}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v5

    invoke-interface {v5}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v5

    .line 200
    iget-object v6, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v6}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v6

    invoke-interface {v6}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromFormulaEditorInCatroid()Z

    move-result v6

    .line 197
    invoke-virtual {v3, v4, v5, v6}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;->newInstance(IZZ)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    move-result-object v3

    .line 202
    .local v3, "dialog":Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    invoke-direct {p0, v3}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->setupColorPickerDialogListeners(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V

    .line 203
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/DialogFragment;

    invoke-direct {p0, v4, v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 204
    .end local v3    # "dialog":Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    nop

    .line 206
    .end local v1    # "it":Lorg/catrobat/paintroid/tools/Tool;
    .end local v2    # "$i$a$-let-MainActivityNavigator$showColorPickerDialog$1":I
    :cond_0
    return-void
.end method

.method public showFeedbackDialog()V
    .locals 3

    .line 284
    new-instance v0, Lorg/catrobat/paintroid/dialog/FeedbackDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/FeedbackDialog;-><init>()V

    .line 285
    .local v0, "feedbackDialog":Lorg/catrobat/paintroid/dialog/FeedbackDialog;
    nop

    .line 286
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 287
    nop

    .line 285
    const-string v2, "feedbackdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/FeedbackDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public showImageImportDialog()V
    .locals 3

    .line 347
    new-instance v0, Lorg/catrobat/paintroid/dialog/ImportImageDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;-><init>()V

    .line 348
    .local v0, "importImage":Lorg/catrobat/paintroid/dialog/ImportImageDialog;
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "aboutdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public showIndeterminateProgressDialog()V
    .locals 3

    .line 352
    new-instance v0, Lorg/catrobat/paintroid/dialog/IndeterminateProgressDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/IndeterminateProgressDialog;-><init>()V

    .line 353
    .local v0, "progressDialogFragment":Lorg/catrobat/paintroid/dialog/IndeterminateProgressDialog;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "indeterminateprogressdialogfragment"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public showJpgInformationDialog()V
    .locals 3

    .line 316
    new-instance v0, Lorg/catrobat/paintroid/dialog/JpgInfoDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/JpgInfoDialog;-><init>()V

    .line 317
    .local v0, "jpgInfoDialog":Lorg/catrobat/paintroid/dialog/JpgInfoDialog;
    nop

    .line 318
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 319
    nop

    .line 317
    const-string v2, "jpginformationdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/JpgInfoDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public showLikeUsDialog()V
    .locals 3

    .line 268
    new-instance v0, Lorg/catrobat/paintroid/dialog/LikeUsDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/LikeUsDialog;-><init>()V

    .line 269
    .local v0, "likeUsDialog":Lorg/catrobat/paintroid/dialog/LikeUsDialog;
    nop

    .line 270
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 271
    nop

    .line 269
    const-string v2, "likeusdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/LikeUsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public showLoadErrorDialog()V
    .locals 4

    .line 386
    sget-object v0, Lorg/catrobat/paintroid/dialog/InfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;

    .line 387
    sget-object v1, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->WARNING:Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    .line 388
    sget v2, Lorg/catrobat/paintroid/R$string;->dialog_loading_image_failed_title:I

    sget v3, Lorg/catrobat/paintroid/R$string;->dialog_loading_image_failed_text:I

    .line 386
    invoke-virtual {v0, v1, v2, v3}, Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;->newInstance(Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;II)Lorg/catrobat/paintroid/dialog/InfoDialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDialogFragment;

    .line 390
    .local v0, "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "loadbitmapdialogerror"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public showOraInformationDialog()V
    .locals 3

    .line 324
    new-instance v0, Lorg/catrobat/paintroid/dialog/OraInfoDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/OraInfoDialog;-><init>()V

    .line 325
    .local v0, "oraInfoDialog":Lorg/catrobat/paintroid/dialog/OraInfoDialog;
    nop

    .line 326
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 327
    nop

    .line 325
    const-string v2, "orainformationdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/OraInfoDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public showOverwriteDialog(IZ)V
    .locals 3
    .param p1, "permissionCode"    # I
    .param p2, "isExport"    # Z

    .line 300
    sget-object v0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->Companion:Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;->newInstance(IZ)Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    move-result-object v0

    .line 301
    .local v0, "overwriteDialog":Lorg/catrobat/paintroid/dialog/OverwriteDialog;
    nop

    .line 302
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 303
    nop

    .line 301
    const-string v2, "saveinformationdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public showPngInformationDialog()V
    .locals 3

    .line 308
    new-instance v0, Lorg/catrobat/paintroid/dialog/PngInfoDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/PngInfoDialog;-><init>()V

    .line 309
    .local v0, "pngInfoDialog":Lorg/catrobat/paintroid/dialog/PngInfoDialog;
    nop

    .line 310
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 311
    nop

    .line 309
    const-string v2, "pnginformationdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/PngInfoDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public showRateUsDialog()V
    .locals 3

    .line 276
    new-instance v0, Lorg/catrobat/paintroid/dialog/RateUsDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/RateUsDialog;-><init>()V

    .line 277
    .local v0, "rateUsDialog":Lorg/catrobat/paintroid/dialog/RateUsDialog;
    nop

    .line 278
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 279
    nop

    .line 277
    const-string v2, "rateusdialogfragment"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/dialog/RateUsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public showRequestPermanentlyDeniedPermissionRationaleDialog()V
    .locals 3

    .line 404
    sget-object v0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;

    .line 405
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mainActivity.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;->newInstance(Ljava/lang/String;)Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDialogFragment;

    .line 407
    .local v0, "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "permissiondialogfragment"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public showRequestPermissionRationaleDialog(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissionType"    # Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    const-string v0, "permissionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    nop

    .line 399
    sget-object v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;->newInstance(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;

    move-result-object v0

    .line 398
    check-cast v0, Landroidx/appcompat/app/AppCompatDialogFragment;

    .line 400
    .local v0, "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "permissiondialogfragment"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public showSaveBeforeFinishDialog()V
    .locals 3

    .line 428
    new-instance v0, Lorg/catrobat/paintroid/dialog/SaveBeforeFinishDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/SaveBeforeFinishDialog;-><init>()V

    check-cast v0, Landroidx/appcompat/app/AppCompatDialogFragment;

    .line 429
    .local v0, "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "savebeforequitfragment"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public showSaveBeforeLoadImageDialog()V
    .locals 3

    .line 438
    new-instance v0, Lorg/catrobat/paintroid/dialog/SaveBeforeLoadImageDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/SaveBeforeLoadImageDialog;-><init>()V

    check-cast v0, Landroidx/appcompat/app/AppCompatDialogFragment;

    .line 439
    .local v0, "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "savebeforequitfragment"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public showSaveBeforeNewImageDialog()V
    .locals 3

    .line 433
    new-instance v0, Lorg/catrobat/paintroid/dialog/SaveBeforeNewImageDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/SaveBeforeNewImageDialog;-><init>()V

    check-cast v0, Landroidx/appcompat/app/AppCompatDialogFragment;

    .line 434
    .local v0, "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "savebeforequitfragment"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public showSaveErrorDialog()V
    .locals 4

    .line 378
    sget-object v0, Lorg/catrobat/paintroid/dialog/InfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;

    .line 379
    sget-object v1, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->WARNING:Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    .line 380
    sget v2, Lorg/catrobat/paintroid/R$string;->dialog_error_sdcard_text:I

    sget v3, Lorg/catrobat/paintroid/R$string;->dialog_error_save_title:I

    .line 378
    invoke-virtual {v0, v1, v2, v3}, Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;->newInstance(Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;II)Lorg/catrobat/paintroid/dialog/InfoDialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDialogFragment;

    .line 382
    .local v0, "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "savedialogerror"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public showSaveImageInformationDialogWhenStandalone(IIZ)V
    .locals 6
    .param p1, "permissionCode"    # I
    .param p2, "imageNumber"    # I
    .param p3, "isExport"    # Z

    .line 454
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->getSavedPictureUri()Landroid/net/Uri;

    move-result-object v0

    .line 455
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 456
    sget-object v2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mainActivity.contentResolver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lorg/catrobat/paintroid/FileIO;->parseFileName(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 458
    :cond_0
    if-nez p3, :cond_3

    iget-object v2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/MainActivity;->getModel()Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;

    move-result-object v2

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Model;->isOpenedFromCatroid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v4, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v4}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v1, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jpeg"

    invoke-static {v2, v4, v3, v1, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 462
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    goto :goto_0

    .line 464
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 465
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 466
    :goto_0
    nop

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 468
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/catrobat/paintroid/FileIO;->setCatroidFlag(Z)V

    .line 469
    sput-boolean v3, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    .line 470
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->switchBetweenVersions(IZ)V

    .line 471
    return-void

    .line 473
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .line 474
    .local v2, "isStandard":Z
    if-ne p1, v1, :cond_4

    .line 475
    const/4 v2, 0x1

    .line 477
    :cond_4
    nop

    .line 478
    sget-object v1, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->Companion:Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;

    invoke-virtual {v1, p1, p2, v2, p3}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;->newInstance(IIZZ)Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    move-result-object v1

    .line 477
    nop

    .line 479
    .local v1, "saveInfoDialog":Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
    nop

    .line 480
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 481
    nop

    .line 479
    const-string v4, "saveinformationdialogfragment"

    invoke-virtual {v1, v3, v4}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public showScaleImageRequestDialog(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "requestCode"    # I

    .line 443
    if-eqz p1, :cond_0

    .line 444
    sget-object v0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->Companion:Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;->newInstance(Landroid/net/Uri;I)Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDialogFragment;

    .line 445
    .local v0, "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const-string v2, "showscaleimagedialog"

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 446
    return-void

    .line 443
    .end local v0    # "dialog":Landroidx/appcompat/app/AppCompatDialogFragment;
    :cond_0
    return-void
.end method

.method public showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .line 370
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lorg/catrobat/paintroid/ui/ToastFactory;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lorg/catrobat/paintroid/ui/ToastFactory;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    return-void
.end method

.method public showToolChangeToast(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "idRes"    # I

    .line 486
    move v0, p1

    .line 487
    .local v0, "offset":I
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lorg/catrobat/paintroid/ui/ToastFactory;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 488
    .local v1, "toolNameToast":Landroid/widget/Toast;
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mainActivity.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 491
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 492
    return-void
.end method

.method public startImportImageActivity(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 238
    .local v2, "$i$a$-apply-MainActivityNavigator$startImportImageActivity$intent$1":I
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    nop

    .line 237
    .end local v1    # "$this$apply":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-MainActivityNavigator$startImportImageActivity$intent$1":I
    nop

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1, v0, p1}, Lorg/catrobat/paintroid/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    return-void
.end method

.method public startLoadImageActivity(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 230
    .local v2, "$i$a$-apply-MainActivityNavigator$startLoadImageActivity$intent$1":I
    const-string v3, "*/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    nop

    .line 229
    .end local v1    # "$this$apply":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-MainActivityNavigator$startLoadImageActivity$intent$1":I
    nop

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1, v0, p1}, Lorg/catrobat/paintroid/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    return-void
.end method

.method public startShareImageActivity(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 251
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    const-string v2, "image"

    invoke-virtual {v0, p1, v1, v2}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToCache(Landroid/graphics/Bitmap;Lorg/catrobat/paintroid/MainActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v2, v1

    .local v2, "$this$apply":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 253
    .local v3, "$i$a$-apply-MainActivityNavigator$startShareImageActivity$shareIntent$1":I
    move-object v4, v0

    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    iget-object v4, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v4}, Lorg/catrobat/paintroid/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 256
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    nop

    .line 252
    .end local v2    # "$this$apply":Landroid/content/Intent;
    .end local v3    # "$i$a$-apply-MainActivityNavigator$startShareImageActivity$shareIntent$1":I
    nop

    .line 258
    .local v1, "shareIntent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/catrobat/paintroid/R$string;->share_image_via_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mainActivity.resources.g\u2026ing.share_image_via_text)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .local v2, "chooserTitle":Ljava/lang/String;
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/catrobat/paintroid/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    return-void

    .line 251
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "shareIntent":Landroid/content/Intent;
    .end local v2    # "chooserTitle":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public startWelcomeActivity(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .line 245
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityNavigator;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1, v0, p1}, Lorg/catrobat/paintroid/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 248
    return-void
.end method
