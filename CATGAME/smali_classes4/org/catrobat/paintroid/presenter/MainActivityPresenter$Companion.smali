.class public final Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;
.super Ljava/lang/Object;
.source "MainActivityPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/presenter/MainActivityPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivityPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivityPresenter.kt\norg/catrobat/paintroid/presenter/MainActivityPresenter$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1270:1\n37#2,2:1271\n37#2,2:1273\n*S KotlinDebug\n*F\n+ 1 MainActivityPresenter.kt\norg/catrobat/paintroid/presenter/MainActivityPresenter$Companion\n*L\n1176#1:1271,2\n1190#1:1273,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J9\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\rH\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;",
        "",
        "()V",
        "checkForInternet",
        "",
        "context",
        "Landroid/content/Context;",
        "getDataColumn",
        "",
        "uri",
        "Landroid/net/Uri;",
        "selection",
        "selectionArgs",
        "",
        "(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;",
        "getPathFromUri",
        "isDownloadsDocument",
        "isExternalStorageDocument",
        "isGooglePhotosUri",
        "isMediaDocument",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkForInternet(Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;Landroid/content/Context;)Z
    .locals 0

    .line 1170
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->checkForInternet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final checkForInternet(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    .line 1240
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1242
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1243
    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 1245
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    move v1, v0

    goto :goto_1

    .line 1246
    :cond_2
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    .line 1240
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "_data"

    .line 1221
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 1224
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1225
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1226
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 1227
    invoke-interface {v8, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "cursor.getString(index)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object p3

    :cond_1
    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1230
    :catch_0
    :try_start_1
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p4

    const-string v0, "catroidTemp"

    invoke-direct {p3, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1231
    invoke-static {p2, p3, p1}, Lorg/catrobat/paintroid/FileIO;->saveFileFromUri(Landroid/net/Uri;Ljava/io/File;Landroid/content/Context;)V

    .line 1232
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file.absolutePath"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_3

    goto :goto_1

    .line 1234
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object p1

    :goto_2
    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_3
    throw p1
.end method

.method private final isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.providers.downloads.documents"

    .line 1261
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.externalstorage.documents"

    .line 1258
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.google.android.apps.photos.content"

    .line 1267
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.providers.media.documents"

    .line 1264
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 1174
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    const-string v4, ":"

    const-string v5, "docId"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 1175
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 1176
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-array p2, v6, [Ljava/lang/String;

    .line 1272
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1176
    check-cast p1, [Ljava/lang/String;

    .line 1177
    aget-object p2, p1, v6

    const-string v0, "primary"

    .line 1178
    invoke-static {v0, p2, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1272
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1181
    :cond_1
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1182
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "content://downloads/public_downloads"

    .line 1184
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "id"

    .line 1185
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1183
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "withAppendedId(\n        \u2026g()\n                    )"

    .line 1185
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    invoke-direct {p0, p1, p2, v1, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1188
    :cond_2
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1189
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 1190
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    new-array v0, v6, [Ljava/lang/String;

    .line 1274
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 1190
    check-cast p2, [Ljava/lang/String;

    .line 1191
    aget-object v0, p2, v6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x58d9bd6

    if-eq v3, v4, :cond_7

    const v4, 0x5faa95b

    if-eq v3, v4, :cond_5

    const v4, 0x6b0147b

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1193
    :cond_4
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    const-string v3, "image"

    .line 1191
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 1192
    :cond_6
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_7
    const-string v3, "audio"

    .line 1191
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 1194
    :cond_8
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    new-array v0, v2, [Ljava/lang/String;

    .line 1198
    aget-object p2, p2, v2

    aput-object p2, v0, v6

    const-string p2, "_id=?"

    .line 1199
    invoke-direct {p0, p1, v1, p2, v0}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1274
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string v0, "content"

    .line 1201
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1202
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1203
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1204
    :cond_b
    invoke-direct {p0, p1, p2, v1, v1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_c
    const-string p1, "file"

    .line 1205
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1206
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p1, ""

    return-object p1
.end method
