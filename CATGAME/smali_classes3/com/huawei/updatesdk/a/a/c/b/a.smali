.class public Lcom/huawei/updatesdk/a/a/c/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/a/a/c/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/a/a/c/b/a;->a:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/a/a/c/b/a;->b:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/a/a/c/b/a;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/huawei/updatesdk/a/a/c/b/a$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "ApnUtil"

    new-instance v1, Lcom/huawei/updatesdk/a/a/c/b/a$a;

    invoke-direct {v1}, Lcom/huawei/updatesdk/a/a/c/b/a$a;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/huawei/updatesdk/a/a/c/b/a/b;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/a;->d(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/a;->c(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/updatesdk/a/a/c/b/a$a;->a(Ljava/lang/String;)V

    const-string v3, "name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/updatesdk/a/a/c/b/a$a;->c(Ljava/lang/String;)V

    const-string v3, "apn"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/updatesdk/a/a/c/b/a$a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_5

    :catch_0
    move-exception v3

    move-object v5, v3

    move-object v3, p0

    move-object p0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, p0

    move-object p0, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v3, v2

    :goto_2
    :try_start_2
    const-string v4, "getDefaultAPN, Exception: "

    invoke-static {v0, v4, p0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    invoke-virtual {v1}, Lcom/huawei/updatesdk/a/a/c/b/a$a;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    move-object v1, v2

    :cond_5
    return-object v1

    :catchall_2
    move-exception p0

    move-object v2, v3

    goto :goto_5

    :catch_3
    move-exception p0

    :goto_4
    :try_start_3
    const-string v1, "getDefaultAPN, SecurityException: "

    invoke-static {v0, v1, p0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/a;->a(Landroid/content/Context;)Lcom/huawei/updatesdk/a/a/c/b/a$a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/a/c/b/a$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/a/c/b/a$a;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "wap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "ApnUtil"

    const-string v2, "isWap(), SecurityException: "

    invoke-static {v1, v2, p0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static c(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/updatesdk/a/a/c/b/a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 1

    invoke-static {}, Lcom/huawei/updatesdk/a/a/c/b/a/b;->a()Lcom/huawei/updatesdk/a/a/c/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/updatesdk/a/a/c/b/a/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/a;->f(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/a;->e(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/a;->e(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/a;->f(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/a;->c(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static e(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/updatesdk/a/a/c/b/a;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/updatesdk/a/a/c/b/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
