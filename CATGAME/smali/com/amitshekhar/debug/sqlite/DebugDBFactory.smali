.class public Lcom/amitshekhar/debug/sqlite/DebugDBFactory;
.super Ljava/lang/Object;
.source "DebugDBFactory.java"

# interfaces
.implements Lcom/amitshekhar/sqlite/DBFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amitshekhar/sqlite/SQLiteDB;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/amitshekhar/debug/sqlite/DebugSQLiteDB;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amitshekhar/debug/sqlite/DebugSQLiteDB;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method
