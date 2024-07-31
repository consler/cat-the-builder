.class public Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;
.super Ljava/lang/Object;
.source "InMemoryDebugSQLiteDB.java"

# interfaces
.implements Lcom/amitshekhar/sqlite/SQLiteDB;


# instance fields
.field private final database:Landroidx/sqlite/db/SupportSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 33
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public getVersion()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getVersion()I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 47
    iget-object v0, p0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->insert(Ljava/lang/String;ILandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isOpen()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/amitshekhar/sqlite/InMemoryDebugSQLiteDB;->database:Landroidx/sqlite/db/SupportSQLiteDatabase;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
