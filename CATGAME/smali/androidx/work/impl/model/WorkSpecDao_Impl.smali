.class public final Landroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/WorkSpecDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 54
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    .line 146
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 153
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    .line 160
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$4;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$4;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;

    .line 167
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$5;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$5;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 174
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$6;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$6;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 181
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$7;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$7;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    .line 188
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$8;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$8;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    .line 195
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$9;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$9;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    .line 202
    return-void
.end method

.method private __fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/work/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 2178
    .local p1, "_map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2179
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2180
    return-void

    .line 2183
    :cond_0
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_4

    .line 2184
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 2185
    .local v1, "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    const/4 v3, 0x0

    .line 2186
    .local v3, "_tmpIndex":I
    const/4 v4, 0x0

    .line 2187
    .local v4, "_mapIndex":I
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v5

    .line 2188
    .local v5, "_limit":I
    :cond_1
    :goto_0
    if-ge v4, v5, :cond_2

    .line 2189
    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    add-int/lit8 v4, v4, 0x1

    .line 2191
    add-int/lit8 v3, v3, 0x1

    .line 2192
    if-ne v3, v2, :cond_1

    .line 2193
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 2194
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    move-object v1, v6

    .line 2195
    const/4 v3, 0x0

    goto :goto_0

    .line 2198
    :cond_2
    if-lez v3, :cond_3

    .line 2199
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 2201
    :cond_3
    return-void

    .line 2203
    .end local v1    # "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v3    # "_tmpIndex":I
    .end local v4    # "_mapIndex":I
    .end local v5    # "_limit":I
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2204
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 2206
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 2207
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2209
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 2210
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 2211
    .local v5, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 2212
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2213
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 2214
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 2216
    :cond_5
    invoke-virtual {v5, v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2218
    :goto_2
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 2219
    goto :goto_1

    .line 2220
    :cond_6
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 2222
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v8, "work_spec_id"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2223
    .local v8, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 2240
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2224
    return-void

    .line 2226
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2227
    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2228
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2229
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2230
    .local v11, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-eqz v11, :cond_8

    .line 2233
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 2234
    .local v12, "_tmp":[B
    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v13

    .line 2235
    .local v13, "_item_1":Landroidx/work/Data;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2237
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v12    # "_tmp":[B
    .end local v13    # "_item_1":Landroidx/work/Data;
    :cond_8
    goto :goto_3

    .line 2240
    .end local v8    # "_itemKeyIndex":I
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2241
    nop

    .line 2242
    return-void

    .line 2240
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2241
    throw v8
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2113
    .local p1, "_map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2114
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2115
    return-void

    .line 2118
    :cond_0
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_4

    .line 2119
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 2120
    .local v1, "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 2121
    .local v3, "_tmpIndex":I
    const/4 v4, 0x0

    .line 2122
    .local v4, "_mapIndex":I
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v5

    .line 2123
    .local v5, "_limit":I
    :cond_1
    :goto_0
    if-ge v4, v5, :cond_2

    .line 2124
    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    add-int/lit8 v4, v4, 0x1

    .line 2126
    add-int/lit8 v3, v3, 0x1

    .line 2127
    if-ne v3, v2, :cond_1

    .line 2128
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 2129
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    move-object v1, v6

    .line 2130
    const/4 v3, 0x0

    goto :goto_0

    .line 2133
    :cond_2
    if-lez v3, :cond_3

    .line 2134
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 2136
    :cond_3
    return-void

    .line 2138
    .end local v1    # "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "_tmpIndex":I
    .end local v4    # "_mapIndex":I
    .end local v5    # "_limit":I
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2139
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 2141
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 2142
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2144
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 2145
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 2146
    .local v5, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 2147
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2148
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 2149
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 2151
    :cond_5
    invoke-virtual {v5, v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2153
    :goto_2
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 2154
    goto :goto_1

    .line 2155
    :cond_6
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 2157
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v8, "work_spec_id"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    .local v8, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 2173
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2159
    return-void

    .line 2161
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2162
    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2163
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2164
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2165
    .local v11, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_8

    .line 2167
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2168
    .local v12, "_item_1":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2170
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "_item_1":Ljava/lang/String;
    :cond_8
    goto :goto_3

    .line 2173
    .end local v8    # "_itemKeyIndex":I
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2174
    nop

    .line 2175
    return-void

    .line 2173
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2174
    throw v8
.end method

.method static synthetic access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 31
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .param p1, "x1"    # Landroidx/collection/ArrayMap;

    .line 31
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .param p1, "x1"    # Landroidx/collection/ArrayMap;

    .line 31
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 219
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 220
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 221
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 222
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 226
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 228
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 229
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 232
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 233
    nop

    .line 234
    return-void

    .line 231
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 232
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 233
    throw v2
.end method

.method public getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
    .locals 55
    .param p1, "maxLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1631
    move-object/from16 v1, p0

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?"

    .line 1632
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1633
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1634
    .local v5, "_argIndex":I
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-virtual {v4, v5, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1635
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1636
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v4, v7, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1638
    .local v8, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v8, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1639
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    const-string v9, "requires_charging"

    invoke-static {v8, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1640
    .local v9, "_cursorIndexOfMRequiresCharging":I
    const-string v10, "requires_device_idle"

    invoke-static {v8, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1641
    .local v10, "_cursorIndexOfMRequiresDeviceIdle":I
    const-string v11, "requires_battery_not_low"

    invoke-static {v8, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1642
    .local v11, "_cursorIndexOfMRequiresBatteryNotLow":I
    const-string v12, "requires_storage_not_low"

    invoke-static {v8, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1643
    .local v12, "_cursorIndexOfMRequiresStorageNotLow":I
    const-string/jumbo v13, "trigger_content_update_delay"

    invoke-static {v8, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1644
    .local v13, "_cursorIndexOfMTriggerContentUpdateDelay":I
    const-string/jumbo v14, "trigger_max_content_delay"

    invoke-static {v8, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1645
    .local v14, "_cursorIndexOfMTriggerMaxContentDelay":I
    const-string v15, "content_uri_triggers"

    invoke-static {v8, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1646
    .local v15, "_cursorIndexOfMContentUriTriggers":I
    const-string v3, "id"

    invoke-static {v8, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1647
    .local v3, "_cursorIndexOfId":I
    const-string v7, "state"

    invoke-static {v8, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1648
    .local v7, "_cursorIndexOfState":I
    const-string/jumbo v1, "worker_class_name"

    invoke-static {v8, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1649
    .local v1, "_cursorIndexOfWorkerClassName":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "input_merger_class_name"

    invoke-static {v8, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1650
    .local v2, "_cursorIndexOfInputMergerClassName":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v5, "input"

    invoke-static {v8, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 1651
    .local v5, "_cursorIndexOfInput":I
    const-string v6, "output"

    invoke-static {v8, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1652
    .local v6, "_cursorIndexOfOutput":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string v4, "initial_delay"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1653
    .local v4, "_cursorIndexOfInitialDelay":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfInitialDelay":I
    const-string v4, "interval_duration"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1654
    .local v4, "_cursorIndexOfIntervalDuration":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfIntervalDuration":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    const-string v4, "flex_duration"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1655
    .local v4, "_cursorIndexOfFlexDuration":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v21, "_cursorIndexOfFlexDuration":I
    const-string v4, "run_attempt_count"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1656
    .local v4, "_cursorIndexOfRunAttemptCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfRunAttemptCount":I
    .local v22, "_cursorIndexOfRunAttemptCount":I
    const-string v4, "backoff_policy"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1657
    .local v4, "_cursorIndexOfBackoffPolicy":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    const-string v4, "backoff_delay_duration"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1658
    .local v4, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    const-string v4, "period_start_time"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1659
    .local v4, "_cursorIndexOfPeriodStartTime":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfPeriodStartTime":I
    const-string v4, "minimum_retention_duration"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1660
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v4, "schedule_requested_at"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1661
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v27, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1662
    .local v4, "_cursorIndexOfRunInForeground":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRunInForeground":I
    .local v28, "_cursorIndexOfRunInForeground":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v29, v6

    .end local v6    # "_cursorIndexOfOutput":I
    .local v29, "_cursorIndexOfOutput":I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1663
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1666
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1668
    .local v6, "_tmpId":Ljava/lang/String;
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v30

    .line 1670
    .local v31, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v30, Landroidx/work/Constraints;

    invoke-direct/range {v30 .. v30}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v32, v30

    .line 1673
    .local v32, "_tmpConstraints":Landroidx/work/Constraints;
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1674
    .local v30, "_tmp":I
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v33

    move-object/from16 v34, v33

    .line 1675
    .local v34, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v32, v1

    move-object/from16 v1, v34

    .end local v34    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Landroidx/work/Constraints;
    .local v1, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v32, "_cursorIndexOfWorkerClassName":I
    .local v33, "_cursorIndexOfMRequiredNetworkType":I
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 1678
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1679
    .local v34, "_tmp_1":I
    if-eqz v34, :cond_0

    const/16 v35, 0x1

    goto :goto_1

    :cond_0
    const/16 v35, 0x0

    :goto_1
    move/from16 v36, v35

    .line 1680
    .local v36, "_tmpMRequiresCharging":Z
    move-object/from16 v35, v1

    move/from16 v1, v36

    .end local v36    # "_tmpMRequiresCharging":Z
    .local v1, "_tmpMRequiresCharging":Z
    .local v35, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1683
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1684
    .local v36, "_tmp_2":I
    if-eqz v36, :cond_1

    const/16 v37, 0x1

    goto :goto_2

    :cond_1
    const/16 v37, 0x0

    :goto_2
    move/from16 v38, v37

    .line 1685
    .local v38, "_tmpMRequiresDeviceIdle":Z
    move/from16 v37, v1

    move/from16 v1, v38

    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .local v1, "_tmpMRequiresDeviceIdle":Z
    .local v37, "_tmpMRequiresCharging":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1688
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 1689
    .local v38, "_tmp_3":I
    if-eqz v38, :cond_2

    const/16 v39, 0x1

    goto :goto_3

    :cond_2
    const/16 v39, 0x0

    :goto_3
    move/from16 v40, v39

    .line 1690
    .local v40, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v39, v1

    move/from16 v1, v40

    .end local v40    # "_tmpMRequiresBatteryNotLow":Z
    .local v1, "_tmpMRequiresBatteryNotLow":Z
    .local v39, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1693
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 1694
    .local v40, "_tmp_4":I
    if-eqz v40, :cond_3

    const/16 v41, 0x1

    goto :goto_4

    :cond_3
    const/16 v41, 0x0

    :goto_4
    move/from16 v42, v41

    .line 1695
    .local v42, "_tmpMRequiresStorageNotLow":Z
    move/from16 v41, v1

    move/from16 v1, v42

    .end local v42    # "_tmpMRequiresStorageNotLow":Z
    .local v1, "_tmpMRequiresStorageNotLow":Z
    .local v41, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1697
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v44, v42

    .line 1698
    .local v44, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v42, v9

    move/from16 v43, v10

    move-wide/from16 v9, v44

    .end local v10    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .local v9, "_tmpMTriggerContentUpdateDelay":J
    .local v42, "_cursorIndexOfMRequiresCharging":I
    .local v43, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v9, v10}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1700
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    move-wide/from16 v46, v44

    .line 1701
    .local v46, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v44, v9

    move-wide/from16 v9, v46

    .end local v46    # "_tmpMTriggerMaxContentDelay":J
    .local v9, "_tmpMTriggerMaxContentDelay":J
    .restart local v44    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v9, v10}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1704
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v46

    .line 1705
    .local v46, "_tmp_5":[B
    invoke-static/range {v46 .. v46}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v47

    move-object/from16 v48, v47

    .line 1706
    .local v48, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    move/from16 v47, v1

    move-object/from16 v1, v48

    .end local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v47, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 1707
    move-object/from16 v48, v1

    .end local v1    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .restart local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    new-instance v1, Landroidx/work/impl/model/WorkSpec;

    move/from16 v49, v3

    move-object/from16 v3, v31

    .end local v31    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v3, "_tmpWorkerClassName":Ljava/lang/String;
    .local v49, "_cursorIndexOfId":I
    invoke-direct {v1, v6, v3}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    .local v1, "_item":Landroidx/work/impl/model/WorkSpec;
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1710
    .local v31, "_tmp_6":I
    move-object/from16 v50, v3

    .end local v3    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v50, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v3

    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 1711
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1713
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1714
    .local v3, "_tmp_7":[B
    move/from16 v51, v2

    .end local v2    # "_cursorIndexOfInputMergerClassName":I
    .local v51, "_cursorIndexOfInputMergerClassName":I
    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 1716
    move/from16 v2, v29

    .end local v29    # "_cursorIndexOfOutput":I
    .local v2, "_cursorIndexOfOutput":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 1717
    .local v29, "_tmp_8":[B
    move/from16 v52, v2

    .end local v2    # "_cursorIndexOfOutput":I
    .local v52, "_cursorIndexOfOutput":I
    invoke-static/range {v29 .. v29}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 1718
    move-object/from16 v53, v6

    move/from16 v2, v19

    move/from16 v19, v5

    .end local v5    # "_cursorIndexOfInput":I
    .end local v6    # "_tmpId":Ljava/lang/String;
    .local v2, "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfInput":I
    .local v53, "_tmpId":Ljava/lang/String;
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1719
    move-object v6, v3

    move/from16 v5, v20

    move/from16 v20, v2

    .end local v2    # "_cursorIndexOfInitialDelay":I
    .end local v3    # "_tmp_7":[B
    .local v5, "_cursorIndexOfIntervalDuration":I
    .local v6, "_tmp_7":[B
    .local v20, "_cursorIndexOfInitialDelay":I
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1720
    move v3, v5

    move/from16 v2, v21

    move-object/from16 v21, v6

    .end local v5    # "_cursorIndexOfIntervalDuration":I
    .end local v6    # "_tmp_7":[B
    .local v2, "_cursorIndexOfFlexDuration":I
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v21, "_tmp_7":[B
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1721
    move/from16 v5, v22

    .end local v22    # "_cursorIndexOfRunAttemptCount":I
    .local v5, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1723
    move/from16 v6, v23

    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .local v6, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1724
    .local v22, "_tmp_9":I
    move/from16 v23, v2

    .end local v2    # "_cursorIndexOfFlexDuration":I
    .local v23, "_cursorIndexOfFlexDuration":I
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 1725
    move/from16 v54, v6

    move/from16 v2, v24

    move/from16 v24, v5

    .end local v5    # "_cursorIndexOfRunAttemptCount":I
    .end local v6    # "_cursorIndexOfBackoffPolicy":I
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfRunAttemptCount":I
    .local v54, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1726
    move v6, v3

    move/from16 v5, v25

    move/from16 v25, v2

    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .local v5, "_cursorIndexOfPeriodStartTime":I
    .local v6, "_cursorIndexOfIntervalDuration":I
    .local v25, "_cursorIndexOfBackoffDelayDuration":I
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1727
    move v3, v5

    move/from16 v2, v26

    move/from16 v26, v6

    .end local v5    # "_cursorIndexOfPeriodStartTime":I
    .end local v6    # "_cursorIndexOfIntervalDuration":I
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v26, "_cursorIndexOfIntervalDuration":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1728
    move v6, v2

    move/from16 v5, v27

    move/from16 v27, v3

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    .local v27, "_cursorIndexOfPeriodStartTime":I
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1730
    move/from16 v2, v28

    .end local v28    # "_cursorIndexOfRunInForeground":I
    .local v2, "_cursorIndexOfRunInForeground":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1731
    .local v3, "_tmp_10":I
    if-eqz v3, :cond_4

    move/from16 v28, v2

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    move/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "_cursorIndexOfRunInForeground":I
    .restart local v28    # "_cursorIndexOfRunInForeground":I
    :goto_5
    iput-boolean v2, v1, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 1732
    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1733
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1734
    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v24, v25

    move/from16 v25, v27

    move/from16 v1, v32

    move/from16 v0, v33

    move/from16 v9, v42

    move/from16 v10, v43

    move/from16 v3, v49

    move/from16 v2, v51

    move/from16 v29, v52

    move/from16 v23, v54

    move/from16 v27, v5

    move/from16 v5, v19

    move/from16 v19, v20

    move/from16 v20, v26

    move/from16 v26, v6

    .end local v0    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v1    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v3    # "_tmp_10":I
    .end local v9    # "_tmpMTriggerMaxContentDelay":J
    .end local v21    # "_tmp_7":[B
    .end local v22    # "_tmp_9":I
    .end local v29    # "_tmp_8":[B
    .end local v30    # "_tmp":I
    .end local v31    # "_tmp_6":I
    .end local v34    # "_tmp_1":I
    .end local v35    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v36    # "_tmp_2":I
    .end local v37    # "_tmpMRequiresCharging":Z
    .end local v38    # "_tmp_3":I
    .end local v39    # "_tmpMRequiresDeviceIdle":Z
    .end local v40    # "_tmp_4":I
    .end local v41    # "_tmpMRequiresBatteryNotLow":Z
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .end local v46    # "_tmp_5":[B
    .end local v47    # "_tmpMRequiresStorageNotLow":Z
    .end local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .end local v50    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v53    # "_tmpId":Ljava/lang/String;
    goto/16 :goto_0

    .line 1735
    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v32    # "_cursorIndexOfWorkerClassName":I
    .end local v33    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v42    # "_cursorIndexOfMRequiresCharging":I
    .end local v43    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v49    # "_cursorIndexOfId":I
    .end local v51    # "_cursorIndexOfInputMergerClassName":I
    .end local v52    # "_cursorIndexOfOutput":I
    .end local v54    # "_cursorIndexOfBackoffPolicy":I
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    .local v1, "_cursorIndexOfWorkerClassName":I
    .local v2, "_cursorIndexOfInputMergerClassName":I
    .local v3, "_cursorIndexOfId":I
    .local v5, "_cursorIndexOfInput":I
    .local v9, "_cursorIndexOfMRequiresCharging":I
    .restart local v10    # "_cursorIndexOfMRequiresDeviceIdle":I
    .local v19, "_cursorIndexOfInitialDelay":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    .local v21, "_cursorIndexOfFlexDuration":I
    .local v22, "_cursorIndexOfRunAttemptCount":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    .local v25, "_cursorIndexOfPeriodStartTime":I
    .local v26, "_cursorIndexOfMinimumRetentionDuration":I
    .local v27, "_cursorIndexOfScheduleRequestedAt":I
    .local v29, "_cursorIndexOfOutput":I
    :cond_5
    nop

    .line 1737
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1738
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1735
    return-object v4

    .line 1737
    .end local v0    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v1    # "_cursorIndexOfWorkerClassName":I
    .end local v2    # "_cursorIndexOfInputMergerClassName":I
    .end local v3    # "_cursorIndexOfId":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfInput":I
    .end local v7    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfMRequiresCharging":I
    .end local v10    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v11    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v12    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v13    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v14    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v15    # "_cursorIndexOfMContentUriTriggers":I
    .end local v19    # "_cursorIndexOfInitialDelay":I
    .end local v20    # "_cursorIndexOfIntervalDuration":I
    .end local v21    # "_cursorIndexOfFlexDuration":I
    .end local v22    # "_cursorIndexOfRunAttemptCount":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfPeriodStartTime":I
    .end local v26    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v27    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v28    # "_cursorIndexOfRunInForeground":I
    .end local v29    # "_cursorIndexOfOutput":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1738
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1739
    throw v0
.end method

.method public getAllUnfinishedWork()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1460
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    .line 1461
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1462
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1463
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1465
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1466
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1468
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1469
    .local v5, "_item":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_0

    .line 1471
    :cond_0
    nop

    .line 1473
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1474
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1471
    return-object v4

    .line 1473
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1474
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1475
    throw v2
.end method

.method public getAllWorkSpecIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 661
    const-string v0, "SELECT id FROM workspec"

    .line 662
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 663
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 664
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 666
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 669
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 670
    .local v5, "_item":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_0

    .line 672
    :cond_0
    nop

    .line 674
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 675
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 672
    return-object v4

    .line 674
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 675
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 676
    throw v2
.end method

.method public getAllWorkSpecIdsLiveData()Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 681
    const-string v0, "SELECT id FROM workspec"

    .line 682
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 683
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string/jumbo v3, "workspec"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/work/impl/model/WorkSpecDao_Impl$10;

    invoke-direct {v4, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$10;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getEligibleWorkForScheduling(I)Ljava/util/List;
    .locals 55
    .param p1, "schedulerLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "schedulerLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1518
    move-object/from16 v1, p0

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 1519
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1520
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1521
    .local v5, "_argIndex":I
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-virtual {v4, v5, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1522
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1523
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v4, v7, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1525
    .local v8, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v8, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1526
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    const-string v9, "requires_charging"

    invoke-static {v8, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1527
    .local v9, "_cursorIndexOfMRequiresCharging":I
    const-string v10, "requires_device_idle"

    invoke-static {v8, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1528
    .local v10, "_cursorIndexOfMRequiresDeviceIdle":I
    const-string v11, "requires_battery_not_low"

    invoke-static {v8, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1529
    .local v11, "_cursorIndexOfMRequiresBatteryNotLow":I
    const-string v12, "requires_storage_not_low"

    invoke-static {v8, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1530
    .local v12, "_cursorIndexOfMRequiresStorageNotLow":I
    const-string/jumbo v13, "trigger_content_update_delay"

    invoke-static {v8, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1531
    .local v13, "_cursorIndexOfMTriggerContentUpdateDelay":I
    const-string/jumbo v14, "trigger_max_content_delay"

    invoke-static {v8, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1532
    .local v14, "_cursorIndexOfMTriggerMaxContentDelay":I
    const-string v15, "content_uri_triggers"

    invoke-static {v8, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1533
    .local v15, "_cursorIndexOfMContentUriTriggers":I
    const-string v3, "id"

    invoke-static {v8, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1534
    .local v3, "_cursorIndexOfId":I
    const-string v7, "state"

    invoke-static {v8, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1535
    .local v7, "_cursorIndexOfState":I
    const-string/jumbo v1, "worker_class_name"

    invoke-static {v8, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1536
    .local v1, "_cursorIndexOfWorkerClassName":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "input_merger_class_name"

    invoke-static {v8, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1537
    .local v2, "_cursorIndexOfInputMergerClassName":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v5, "input"

    invoke-static {v8, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 1538
    .local v5, "_cursorIndexOfInput":I
    const-string v6, "output"

    invoke-static {v8, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1539
    .local v6, "_cursorIndexOfOutput":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string v4, "initial_delay"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1540
    .local v4, "_cursorIndexOfInitialDelay":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfInitialDelay":I
    const-string v4, "interval_duration"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1541
    .local v4, "_cursorIndexOfIntervalDuration":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfIntervalDuration":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    const-string v4, "flex_duration"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1542
    .local v4, "_cursorIndexOfFlexDuration":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v21, "_cursorIndexOfFlexDuration":I
    const-string v4, "run_attempt_count"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1543
    .local v4, "_cursorIndexOfRunAttemptCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfRunAttemptCount":I
    .local v22, "_cursorIndexOfRunAttemptCount":I
    const-string v4, "backoff_policy"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1544
    .local v4, "_cursorIndexOfBackoffPolicy":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    const-string v4, "backoff_delay_duration"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1545
    .local v4, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    const-string v4, "period_start_time"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1546
    .local v4, "_cursorIndexOfPeriodStartTime":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfPeriodStartTime":I
    const-string v4, "minimum_retention_duration"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1547
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v4, "schedule_requested_at"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1548
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v27, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1549
    .local v4, "_cursorIndexOfRunInForeground":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRunInForeground":I
    .local v28, "_cursorIndexOfRunInForeground":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v29, v6

    .end local v6    # "_cursorIndexOfOutput":I
    .local v29, "_cursorIndexOfOutput":I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1550
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1553
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1555
    .local v6, "_tmpId":Ljava/lang/String;
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v30

    .line 1557
    .local v31, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v30, Landroidx/work/Constraints;

    invoke-direct/range {v30 .. v30}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v32, v30

    .line 1560
    .local v32, "_tmpConstraints":Landroidx/work/Constraints;
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1561
    .local v30, "_tmp":I
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v33

    move-object/from16 v34, v33

    .line 1562
    .local v34, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v32, v1

    move-object/from16 v1, v34

    .end local v34    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Landroidx/work/Constraints;
    .local v1, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v32, "_cursorIndexOfWorkerClassName":I
    .local v33, "_cursorIndexOfMRequiredNetworkType":I
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 1565
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1566
    .local v34, "_tmp_1":I
    if-eqz v34, :cond_0

    const/16 v35, 0x1

    goto :goto_1

    :cond_0
    const/16 v35, 0x0

    :goto_1
    move/from16 v36, v35

    .line 1567
    .local v36, "_tmpMRequiresCharging":Z
    move-object/from16 v35, v1

    move/from16 v1, v36

    .end local v36    # "_tmpMRequiresCharging":Z
    .local v1, "_tmpMRequiresCharging":Z
    .local v35, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1570
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1571
    .local v36, "_tmp_2":I
    if-eqz v36, :cond_1

    const/16 v37, 0x1

    goto :goto_2

    :cond_1
    const/16 v37, 0x0

    :goto_2
    move/from16 v38, v37

    .line 1572
    .local v38, "_tmpMRequiresDeviceIdle":Z
    move/from16 v37, v1

    move/from16 v1, v38

    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .local v1, "_tmpMRequiresDeviceIdle":Z
    .local v37, "_tmpMRequiresCharging":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1575
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 1576
    .local v38, "_tmp_3":I
    if-eqz v38, :cond_2

    const/16 v39, 0x1

    goto :goto_3

    :cond_2
    const/16 v39, 0x0

    :goto_3
    move/from16 v40, v39

    .line 1577
    .local v40, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v39, v1

    move/from16 v1, v40

    .end local v40    # "_tmpMRequiresBatteryNotLow":Z
    .local v1, "_tmpMRequiresBatteryNotLow":Z
    .local v39, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1580
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 1581
    .local v40, "_tmp_4":I
    if-eqz v40, :cond_3

    const/16 v41, 0x1

    goto :goto_4

    :cond_3
    const/16 v41, 0x0

    :goto_4
    move/from16 v42, v41

    .line 1582
    .local v42, "_tmpMRequiresStorageNotLow":Z
    move/from16 v41, v1

    move/from16 v1, v42

    .end local v42    # "_tmpMRequiresStorageNotLow":Z
    .local v1, "_tmpMRequiresStorageNotLow":Z
    .local v41, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1584
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v44, v42

    .line 1585
    .local v44, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v42, v9

    move/from16 v43, v10

    move-wide/from16 v9, v44

    .end local v10    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .local v9, "_tmpMTriggerContentUpdateDelay":J
    .local v42, "_cursorIndexOfMRequiresCharging":I
    .local v43, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v9, v10}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1587
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    move-wide/from16 v46, v44

    .line 1588
    .local v46, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v44, v9

    move-wide/from16 v9, v46

    .end local v46    # "_tmpMTriggerMaxContentDelay":J
    .local v9, "_tmpMTriggerMaxContentDelay":J
    .restart local v44    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v9, v10}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1591
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v46

    .line 1592
    .local v46, "_tmp_5":[B
    invoke-static/range {v46 .. v46}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v47

    move-object/from16 v48, v47

    .line 1593
    .local v48, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    move/from16 v47, v1

    move-object/from16 v1, v48

    .end local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v47, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 1594
    move-object/from16 v48, v1

    .end local v1    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .restart local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    new-instance v1, Landroidx/work/impl/model/WorkSpec;

    move/from16 v49, v3

    move-object/from16 v3, v31

    .end local v31    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v3, "_tmpWorkerClassName":Ljava/lang/String;
    .local v49, "_cursorIndexOfId":I
    invoke-direct {v1, v6, v3}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    .local v1, "_item":Landroidx/work/impl/model/WorkSpec;
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1597
    .local v31, "_tmp_6":I
    move-object/from16 v50, v3

    .end local v3    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v50, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v3

    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 1598
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1600
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1601
    .local v3, "_tmp_7":[B
    move/from16 v51, v2

    .end local v2    # "_cursorIndexOfInputMergerClassName":I
    .local v51, "_cursorIndexOfInputMergerClassName":I
    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 1603
    move/from16 v2, v29

    .end local v29    # "_cursorIndexOfOutput":I
    .local v2, "_cursorIndexOfOutput":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 1604
    .local v29, "_tmp_8":[B
    move/from16 v52, v2

    .end local v2    # "_cursorIndexOfOutput":I
    .local v52, "_cursorIndexOfOutput":I
    invoke-static/range {v29 .. v29}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 1605
    move-object/from16 v53, v6

    move/from16 v2, v19

    move/from16 v19, v5

    .end local v5    # "_cursorIndexOfInput":I
    .end local v6    # "_tmpId":Ljava/lang/String;
    .local v2, "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfInput":I
    .local v53, "_tmpId":Ljava/lang/String;
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1606
    move-object v6, v3

    move/from16 v5, v20

    move/from16 v20, v2

    .end local v2    # "_cursorIndexOfInitialDelay":I
    .end local v3    # "_tmp_7":[B
    .local v5, "_cursorIndexOfIntervalDuration":I
    .local v6, "_tmp_7":[B
    .local v20, "_cursorIndexOfInitialDelay":I
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1607
    move v3, v5

    move/from16 v2, v21

    move-object/from16 v21, v6

    .end local v5    # "_cursorIndexOfIntervalDuration":I
    .end local v6    # "_tmp_7":[B
    .local v2, "_cursorIndexOfFlexDuration":I
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v21, "_tmp_7":[B
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1608
    move/from16 v5, v22

    .end local v22    # "_cursorIndexOfRunAttemptCount":I
    .local v5, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1610
    move/from16 v6, v23

    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .local v6, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1611
    .local v22, "_tmp_9":I
    move/from16 v23, v2

    .end local v2    # "_cursorIndexOfFlexDuration":I
    .local v23, "_cursorIndexOfFlexDuration":I
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 1612
    move/from16 v54, v6

    move/from16 v2, v24

    move/from16 v24, v5

    .end local v5    # "_cursorIndexOfRunAttemptCount":I
    .end local v6    # "_cursorIndexOfBackoffPolicy":I
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfRunAttemptCount":I
    .local v54, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1613
    move v6, v3

    move/from16 v5, v25

    move/from16 v25, v2

    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .local v5, "_cursorIndexOfPeriodStartTime":I
    .local v6, "_cursorIndexOfIntervalDuration":I
    .local v25, "_cursorIndexOfBackoffDelayDuration":I
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1614
    move v3, v5

    move/from16 v2, v26

    move/from16 v26, v6

    .end local v5    # "_cursorIndexOfPeriodStartTime":I
    .end local v6    # "_cursorIndexOfIntervalDuration":I
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v26, "_cursorIndexOfIntervalDuration":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1615
    move v6, v2

    move/from16 v5, v27

    move/from16 v27, v3

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    .local v27, "_cursorIndexOfPeriodStartTime":I
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1617
    move/from16 v2, v28

    .end local v28    # "_cursorIndexOfRunInForeground":I
    .local v2, "_cursorIndexOfRunInForeground":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1618
    .local v3, "_tmp_10":I
    if-eqz v3, :cond_4

    move/from16 v28, v2

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    move/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "_cursorIndexOfRunInForeground":I
    .restart local v28    # "_cursorIndexOfRunInForeground":I
    :goto_5
    iput-boolean v2, v1, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 1619
    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1620
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1621
    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v24, v25

    move/from16 v25, v27

    move/from16 v1, v32

    move/from16 v0, v33

    move/from16 v9, v42

    move/from16 v10, v43

    move/from16 v3, v49

    move/from16 v2, v51

    move/from16 v29, v52

    move/from16 v23, v54

    move/from16 v27, v5

    move/from16 v5, v19

    move/from16 v19, v20

    move/from16 v20, v26

    move/from16 v26, v6

    .end local v0    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v1    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v3    # "_tmp_10":I
    .end local v9    # "_tmpMTriggerMaxContentDelay":J
    .end local v21    # "_tmp_7":[B
    .end local v22    # "_tmp_9":I
    .end local v29    # "_tmp_8":[B
    .end local v30    # "_tmp":I
    .end local v31    # "_tmp_6":I
    .end local v34    # "_tmp_1":I
    .end local v35    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v36    # "_tmp_2":I
    .end local v37    # "_tmpMRequiresCharging":Z
    .end local v38    # "_tmp_3":I
    .end local v39    # "_tmpMRequiresDeviceIdle":Z
    .end local v40    # "_tmp_4":I
    .end local v41    # "_tmpMRequiresBatteryNotLow":Z
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .end local v46    # "_tmp_5":[B
    .end local v47    # "_tmpMRequiresStorageNotLow":Z
    .end local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .end local v50    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v53    # "_tmpId":Ljava/lang/String;
    goto/16 :goto_0

    .line 1622
    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v32    # "_cursorIndexOfWorkerClassName":I
    .end local v33    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v42    # "_cursorIndexOfMRequiresCharging":I
    .end local v43    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v49    # "_cursorIndexOfId":I
    .end local v51    # "_cursorIndexOfInputMergerClassName":I
    .end local v52    # "_cursorIndexOfOutput":I
    .end local v54    # "_cursorIndexOfBackoffPolicy":I
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    .local v1, "_cursorIndexOfWorkerClassName":I
    .local v2, "_cursorIndexOfInputMergerClassName":I
    .local v3, "_cursorIndexOfId":I
    .local v5, "_cursorIndexOfInput":I
    .local v9, "_cursorIndexOfMRequiresCharging":I
    .restart local v10    # "_cursorIndexOfMRequiresDeviceIdle":I
    .local v19, "_cursorIndexOfInitialDelay":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    .local v21, "_cursorIndexOfFlexDuration":I
    .local v22, "_cursorIndexOfRunAttemptCount":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    .local v25, "_cursorIndexOfPeriodStartTime":I
    .local v26, "_cursorIndexOfMinimumRetentionDuration":I
    .local v27, "_cursorIndexOfScheduleRequestedAt":I
    .local v29, "_cursorIndexOfOutput":I
    :cond_5
    nop

    .line 1624
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1625
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1622
    return-object v4

    .line 1624
    .end local v0    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v1    # "_cursorIndexOfWorkerClassName":I
    .end local v2    # "_cursorIndexOfInputMergerClassName":I
    .end local v3    # "_cursorIndexOfId":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfInput":I
    .end local v7    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfMRequiresCharging":I
    .end local v10    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v11    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v12    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v13    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v14    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v15    # "_cursorIndexOfMContentUriTriggers":I
    .end local v19    # "_cursorIndexOfInitialDelay":I
    .end local v20    # "_cursorIndexOfIntervalDuration":I
    .end local v21    # "_cursorIndexOfFlexDuration":I
    .end local v22    # "_cursorIndexOfRunAttemptCount":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfPeriodStartTime":I
    .end local v26    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v27    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v28    # "_cursorIndexOfRunInForeground":I
    .end local v29    # "_cursorIndexOfOutput":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1625
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1626
    throw v0
.end method

.method public getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/Data;",
            ">;"
        }
    .end annotation

    .line 1380
    const-string v0, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 1381
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1382
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1383
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 1384
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1386
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1388
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1389
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1391
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1392
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/Data;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1395
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1396
    .local v6, "_tmp":[B
    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v7

    .line 1397
    .local v7, "_item":Landroidx/work/Data;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    nop

    .end local v6    # "_tmp":[B
    .end local v7    # "_item":Landroidx/work/Data;
    goto :goto_1

    .line 1399
    :cond_1
    nop

    .line 1401
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1402
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1399
    return-object v4

    .line 1401
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/Data;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1402
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1403
    throw v4
.end method

.method public getRecentlyCompletedWork(J)Ljava/util/List;
    .locals 55
    .param p1, "startingAt"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "startingAt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1966
    move-object/from16 v1, p0

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    .line 1967
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1968
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1969
    .local v5, "_argIndex":I
    move-wide/from16 v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1970
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1971
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v4, v8, v9}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1973
    .local v9, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v9, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1974
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    const-string v10, "requires_charging"

    invoke-static {v9, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1975
    .local v10, "_cursorIndexOfMRequiresCharging":I
    const-string v11, "requires_device_idle"

    invoke-static {v9, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1976
    .local v11, "_cursorIndexOfMRequiresDeviceIdle":I
    const-string v12, "requires_battery_not_low"

    invoke-static {v9, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1977
    .local v12, "_cursorIndexOfMRequiresBatteryNotLow":I
    const-string v13, "requires_storage_not_low"

    invoke-static {v9, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1978
    .local v13, "_cursorIndexOfMRequiresStorageNotLow":I
    const-string/jumbo v14, "trigger_content_update_delay"

    invoke-static {v9, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1979
    .local v14, "_cursorIndexOfMTriggerContentUpdateDelay":I
    const-string/jumbo v15, "trigger_max_content_delay"

    invoke-static {v9, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1980
    .local v15, "_cursorIndexOfMTriggerMaxContentDelay":I
    const-string v3, "content_uri_triggers"

    invoke-static {v9, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1981
    .local v3, "_cursorIndexOfMContentUriTriggers":I
    const-string v8, "id"

    invoke-static {v9, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1982
    .local v8, "_cursorIndexOfId":I
    const-string v1, "state"

    invoke-static {v9, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1983
    .local v1, "_cursorIndexOfState":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v2, "worker_class_name"

    invoke-static {v9, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1984
    .local v2, "_cursorIndexOfWorkerClassName":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v5, "input_merger_class_name"

    invoke-static {v9, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 1985
    .local v5, "_cursorIndexOfInputMergerClassName":I
    const-string v6, "input"

    invoke-static {v9, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 1986
    .local v6, "_cursorIndexOfInput":I
    const-string v7, "output"

    invoke-static {v9, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1987
    .local v7, "_cursorIndexOfOutput":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string v4, "initial_delay"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1988
    .local v4, "_cursorIndexOfInitialDelay":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfInitialDelay":I
    const-string v4, "interval_duration"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1989
    .local v4, "_cursorIndexOfIntervalDuration":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfIntervalDuration":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    const-string v4, "flex_duration"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1990
    .local v4, "_cursorIndexOfFlexDuration":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v21, "_cursorIndexOfFlexDuration":I
    const-string v4, "run_attempt_count"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1991
    .local v4, "_cursorIndexOfRunAttemptCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfRunAttemptCount":I
    .local v22, "_cursorIndexOfRunAttemptCount":I
    const-string v4, "backoff_policy"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1992
    .local v4, "_cursorIndexOfBackoffPolicy":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    const-string v4, "backoff_delay_duration"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1993
    .local v4, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    const-string v4, "period_start_time"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1994
    .local v4, "_cursorIndexOfPeriodStartTime":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfPeriodStartTime":I
    const-string v4, "minimum_retention_duration"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1995
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v4, "schedule_requested_at"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1996
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v27, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v9, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1997
    .local v4, "_cursorIndexOfRunInForeground":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRunInForeground":I
    .local v28, "_cursorIndexOfRunInForeground":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v29, v7

    .end local v7    # "_cursorIndexOfOutput":I
    .local v29, "_cursorIndexOfOutput":I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1998
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2001
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2003
    .local v7, "_tmpId":Ljava/lang/String;
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v30

    .line 2005
    .local v31, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v30, Landroidx/work/Constraints;

    invoke-direct/range {v30 .. v30}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v32, v30

    .line 2008
    .local v32, "_tmpConstraints":Landroidx/work/Constraints;
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 2009
    .local v30, "_tmp":I
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v33

    move-object/from16 v34, v33

    .line 2010
    .local v34, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v32, v2

    move-object/from16 v2, v34

    .end local v34    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Landroidx/work/Constraints;
    .local v2, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v32, "_cursorIndexOfWorkerClassName":I
    .local v33, "_cursorIndexOfMRequiredNetworkType":I
    invoke-virtual {v0, v2}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 2013
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 2014
    .local v34, "_tmp_1":I
    if-eqz v34, :cond_0

    const/16 v35, 0x1

    goto :goto_1

    :cond_0
    const/16 v35, 0x0

    :goto_1
    move/from16 v36, v35

    .line 2015
    .local v36, "_tmpMRequiresCharging":Z
    move-object/from16 v35, v2

    move/from16 v2, v36

    .end local v36    # "_tmpMRequiresCharging":Z
    .local v2, "_tmpMRequiresCharging":Z
    .local v35, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    invoke-virtual {v0, v2}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 2018
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 2019
    .local v36, "_tmp_2":I
    if-eqz v36, :cond_1

    const/16 v37, 0x1

    goto :goto_2

    :cond_1
    const/16 v37, 0x0

    :goto_2
    move/from16 v38, v37

    .line 2020
    .local v38, "_tmpMRequiresDeviceIdle":Z
    move/from16 v37, v2

    move/from16 v2, v38

    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .local v2, "_tmpMRequiresDeviceIdle":Z
    .local v37, "_tmpMRequiresCharging":Z
    invoke-virtual {v0, v2}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 2023
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 2024
    .local v38, "_tmp_3":I
    if-eqz v38, :cond_2

    const/16 v39, 0x1

    goto :goto_3

    :cond_2
    const/16 v39, 0x0

    :goto_3
    move/from16 v40, v39

    .line 2025
    .local v40, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v39, v2

    move/from16 v2, v40

    .end local v40    # "_tmpMRequiresBatteryNotLow":Z
    .local v2, "_tmpMRequiresBatteryNotLow":Z
    .local v39, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v2}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 2028
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 2029
    .local v40, "_tmp_4":I
    if-eqz v40, :cond_3

    const/16 v41, 0x1

    goto :goto_4

    :cond_3
    const/16 v41, 0x0

    :goto_4
    move/from16 v42, v41

    .line 2030
    .local v42, "_tmpMRequiresStorageNotLow":Z
    move/from16 v41, v2

    move/from16 v2, v42

    .end local v42    # "_tmpMRequiresStorageNotLow":Z
    .local v2, "_tmpMRequiresStorageNotLow":Z
    .local v41, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v2}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 2032
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v44, v42

    .line 2033
    .local v44, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v42, v10

    move/from16 v43, v11

    move-wide/from16 v10, v44

    .end local v11    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .local v10, "_tmpMTriggerContentUpdateDelay":J
    .local v42, "_cursorIndexOfMRequiresCharging":I
    .local v43, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v10, v11}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 2035
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    move-wide/from16 v46, v44

    .line 2036
    .local v46, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v44, v10

    move-wide/from16 v10, v46

    .end local v46    # "_tmpMTriggerMaxContentDelay":J
    .local v10, "_tmpMTriggerMaxContentDelay":J
    .restart local v44    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v10, v11}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 2039
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v46

    .line 2040
    .local v46, "_tmp_5":[B
    invoke-static/range {v46 .. v46}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v47

    move-object/from16 v48, v47

    .line 2041
    .local v48, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    move/from16 v47, v2

    move-object/from16 v2, v48

    .end local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v2, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v47, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v2}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 2042
    move-object/from16 v48, v2

    .end local v2    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .restart local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    new-instance v2, Landroidx/work/impl/model/WorkSpec;

    move/from16 v49, v3

    move-object/from16 v3, v31

    .end local v31    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v3, "_tmpWorkerClassName":Ljava/lang/String;
    .local v49, "_cursorIndexOfMContentUriTriggers":I
    invoke-direct {v2, v7, v3}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    .local v2, "_item":Landroidx/work/impl/model/WorkSpec;
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 2045
    .local v31, "_tmp_6":I
    move/from16 v50, v1

    .end local v1    # "_cursorIndexOfState":I
    .local v50, "_cursorIndexOfState":I
    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 2046
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 2048
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 2049
    .local v1, "_tmp_7":[B
    move-object/from16 v51, v3

    .end local v3    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v51, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 2051
    move/from16 v3, v29

    .end local v29    # "_cursorIndexOfOutput":I
    .local v3, "_cursorIndexOfOutput":I
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 2052
    .local v29, "_tmp_8":[B
    move-object/from16 v52, v1

    .end local v1    # "_tmp_7":[B
    .local v52, "_tmp_7":[B
    invoke-static/range {v29 .. v29}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 2053
    move/from16 v53, v6

    move/from16 v1, v19

    move/from16 v19, v5

    .end local v5    # "_cursorIndexOfInputMergerClassName":I
    .end local v6    # "_cursorIndexOfInput":I
    .local v1, "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfInputMergerClassName":I
    .local v53, "_cursorIndexOfInput":I
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 2054
    move/from16 v5, v20

    move-object/from16 v20, v7

    .end local v7    # "_tmpId":Ljava/lang/String;
    .local v5, "_cursorIndexOfIntervalDuration":I
    .local v20, "_tmpId":Ljava/lang/String;
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 2055
    move/from16 v6, v21

    move/from16 v21, v8

    .end local v8    # "_cursorIndexOfId":I
    .local v6, "_cursorIndexOfFlexDuration":I
    .local v21, "_cursorIndexOfId":I
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 2056
    move/from16 v7, v22

    .end local v22    # "_cursorIndexOfRunAttemptCount":I
    .local v7, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 2058
    move/from16 v8, v23

    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .local v8, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 2059
    .local v22, "_tmp_9":I
    move/from16 v23, v1

    .end local v1    # "_cursorIndexOfInitialDelay":I
    .local v23, "_cursorIndexOfInitialDelay":I
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 2060
    move/from16 v54, v6

    move/from16 v1, v24

    move/from16 v24, v5

    .end local v5    # "_cursorIndexOfIntervalDuration":I
    .end local v6    # "_cursorIndexOfFlexDuration":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfIntervalDuration":I
    .local v54, "_cursorIndexOfFlexDuration":I
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 2061
    move/from16 v5, v25

    move/from16 v25, v7

    .end local v7    # "_cursorIndexOfRunAttemptCount":I
    .local v5, "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 2062
    move/from16 v6, v26

    move/from16 v26, v8

    .end local v8    # "_cursorIndexOfBackoffPolicy":I
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 2063
    move v8, v5

    move/from16 v7, v27

    move/from16 v27, v6

    .end local v5    # "_cursorIndexOfPeriodStartTime":I
    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v7, "_cursorIndexOfScheduleRequestedAt":I
    .local v8, "_cursorIndexOfPeriodStartTime":I
    .local v27, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 2065
    move/from16 v5, v28

    .end local v28    # "_cursorIndexOfRunInForeground":I
    .local v5, "_cursorIndexOfRunInForeground":I
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2066
    .local v6, "_tmp_10":I
    if-eqz v6, :cond_4

    move/from16 v28, v1

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    move/from16 v28, v1

    const/4 v1, 0x0

    .end local v1    # "_cursorIndexOfBackoffDelayDuration":I
    .local v28, "_cursorIndexOfBackoffDelayDuration":I
    :goto_5
    iput-boolean v1, v2, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 2067
    iput-object v0, v2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 2068
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2069
    move/from16 v29, v3

    move/from16 v20, v24

    move/from16 v22, v25

    move/from16 v24, v28

    move/from16 v2, v32

    move/from16 v0, v33

    move/from16 v10, v42

    move/from16 v11, v43

    move/from16 v3, v49

    move/from16 v1, v50

    move/from16 v6, v53

    move/from16 v28, v5

    move/from16 v25, v8

    move/from16 v5, v19

    move/from16 v8, v21

    move/from16 v19, v23

    move/from16 v23, v26

    move/from16 v26, v27

    move/from16 v21, v54

    move/from16 v27, v7

    .end local v0    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v2    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v6    # "_tmp_10":I
    .end local v10    # "_tmpMTriggerMaxContentDelay":J
    .end local v20    # "_tmpId":Ljava/lang/String;
    .end local v22    # "_tmp_9":I
    .end local v29    # "_tmp_8":[B
    .end local v30    # "_tmp":I
    .end local v31    # "_tmp_6":I
    .end local v34    # "_tmp_1":I
    .end local v35    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v36    # "_tmp_2":I
    .end local v37    # "_tmpMRequiresCharging":Z
    .end local v38    # "_tmp_3":I
    .end local v39    # "_tmpMRequiresDeviceIdle":Z
    .end local v40    # "_tmp_4":I
    .end local v41    # "_tmpMRequiresBatteryNotLow":Z
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .end local v46    # "_tmp_5":[B
    .end local v47    # "_tmpMRequiresStorageNotLow":Z
    .end local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .end local v51    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v52    # "_tmp_7":[B
    goto/16 :goto_0

    .line 2070
    .end local v7    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v32    # "_cursorIndexOfWorkerClassName":I
    .end local v33    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v42    # "_cursorIndexOfMRequiresCharging":I
    .end local v43    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v49    # "_cursorIndexOfMContentUriTriggers":I
    .end local v50    # "_cursorIndexOfState":I
    .end local v53    # "_cursorIndexOfInput":I
    .end local v54    # "_cursorIndexOfFlexDuration":I
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    .local v1, "_cursorIndexOfState":I
    .local v2, "_cursorIndexOfWorkerClassName":I
    .local v3, "_cursorIndexOfMContentUriTriggers":I
    .local v5, "_cursorIndexOfInputMergerClassName":I
    .local v6, "_cursorIndexOfInput":I
    .local v8, "_cursorIndexOfId":I
    .local v10, "_cursorIndexOfMRequiresCharging":I
    .restart local v11    # "_cursorIndexOfMRequiresDeviceIdle":I
    .local v19, "_cursorIndexOfInitialDelay":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    .local v21, "_cursorIndexOfFlexDuration":I
    .local v22, "_cursorIndexOfRunAttemptCount":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    .local v25, "_cursorIndexOfPeriodStartTime":I
    .local v26, "_cursorIndexOfMinimumRetentionDuration":I
    .local v27, "_cursorIndexOfScheduleRequestedAt":I
    .local v28, "_cursorIndexOfRunInForeground":I
    .local v29, "_cursorIndexOfOutput":I
    :cond_5
    nop

    .line 2072
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2073
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2070
    return-object v4

    .line 2072
    .end local v0    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v1    # "_cursorIndexOfState":I
    .end local v2    # "_cursorIndexOfWorkerClassName":I
    .end local v3    # "_cursorIndexOfMContentUriTriggers":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfInputMergerClassName":I
    .end local v6    # "_cursorIndexOfInput":I
    .end local v8    # "_cursorIndexOfId":I
    .end local v10    # "_cursorIndexOfMRequiresCharging":I
    .end local v11    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v12    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v13    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v14    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v15    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v19    # "_cursorIndexOfInitialDelay":I
    .end local v20    # "_cursorIndexOfIntervalDuration":I
    .end local v21    # "_cursorIndexOfFlexDuration":I
    .end local v22    # "_cursorIndexOfRunAttemptCount":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfPeriodStartTime":I
    .end local v26    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v27    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v28    # "_cursorIndexOfRunInForeground":I
    .end local v29    # "_cursorIndexOfOutput":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2073
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2074
    throw v0
.end method

.method public getRunningWork()Ljava/util/List;
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1855
    move-object/from16 v1, p0

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1"

    .line 1856
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1857
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1858
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 1860
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1861
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    const-string v6, "requires_charging"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 1862
    .local v6, "_cursorIndexOfMRequiresCharging":I
    const-string v7, "requires_device_idle"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1863
    .local v7, "_cursorIndexOfMRequiresDeviceIdle":I
    const-string v8, "requires_battery_not_low"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1864
    .local v8, "_cursorIndexOfMRequiresBatteryNotLow":I
    const-string v9, "requires_storage_not_low"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1865
    .local v9, "_cursorIndexOfMRequiresStorageNotLow":I
    const-string/jumbo v10, "trigger_content_update_delay"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1866
    .local v10, "_cursorIndexOfMTriggerContentUpdateDelay":I
    const-string/jumbo v11, "trigger_max_content_delay"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1867
    .local v11, "_cursorIndexOfMTriggerMaxContentDelay":I
    const-string v12, "content_uri_triggers"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1868
    .local v12, "_cursorIndexOfMContentUriTriggers":I
    const-string v13, "id"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1869
    .local v13, "_cursorIndexOfId":I
    const-string v14, "state"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1870
    .local v14, "_cursorIndexOfState":I
    const-string/jumbo v15, "worker_class_name"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1871
    .local v15, "_cursorIndexOfWorkerClassName":I
    const-string v3, "input_merger_class_name"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1872
    .local v3, "_cursorIndexOfInputMergerClassName":I
    const-string v1, "input"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1873
    .local v1, "_cursorIndexOfInput":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "output"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1874
    .local v2, "_cursorIndexOfOutput":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_2
    const-string v4, "initial_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1875
    .local v4, "_cursorIndexOfInitialDelay":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfInitialDelay":I
    .local v18, "_cursorIndexOfInitialDelay":I
    const-string v4, "interval_duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1876
    .local v4, "_cursorIndexOfIntervalDuration":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfIntervalDuration":I
    .local v19, "_cursorIndexOfIntervalDuration":I
    const-string v4, "flex_duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1877
    .local v4, "_cursorIndexOfFlexDuration":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v20, "_cursorIndexOfFlexDuration":I
    const-string v4, "run_attempt_count"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1878
    .local v4, "_cursorIndexOfRunAttemptCount":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfRunAttemptCount":I
    .local v21, "_cursorIndexOfRunAttemptCount":I
    const-string v4, "backoff_policy"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1879
    .local v4, "_cursorIndexOfBackoffPolicy":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    const-string v4, "backoff_delay_duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1880
    .local v4, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfBackoffDelayDuration":I
    .local v23, "_cursorIndexOfBackoffDelayDuration":I
    const-string v4, "period_start_time"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1881
    .local v4, "_cursorIndexOfPeriodStartTime":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfPeriodStartTime":I
    .local v24, "_cursorIndexOfPeriodStartTime":I
    const-string v4, "minimum_retention_duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1882
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v25, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v4, "schedule_requested_at"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1883
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v26, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1884
    .local v4, "_cursorIndexOfRunInForeground":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRunInForeground":I
    .local v27, "_cursorIndexOfRunInForeground":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v28, v2

    .end local v2    # "_cursorIndexOfOutput":I
    .local v28, "_cursorIndexOfOutput":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 1885
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1888
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1890
    .local v4, "_tmpId":Ljava/lang/String;
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v29

    .line 1892
    .local v30, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v29, Landroidx/work/Constraints;

    invoke-direct/range {v29 .. v29}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v31, v29

    .line 1895
    .local v31, "_tmpConstraints":Landroidx/work/Constraints;
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1896
    .local v29, "_tmp":I
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v32

    move-object/from16 v33, v32

    .line 1897
    .local v33, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v31, v13

    move-object/from16 v13, v33

    .end local v33    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Landroidx/work/Constraints;
    .local v13, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v31, "_cursorIndexOfId":I
    .local v32, "_cursorIndexOfMRequiredNetworkType":I
    invoke-virtual {v0, v13}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 1900
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1901
    .local v33, "_tmp_1":I
    const/16 v34, 0x1

    if-eqz v33, :cond_0

    move/from16 v35, v34

    goto :goto_1

    :cond_0
    const/16 v35, 0x0

    :goto_1
    move/from16 v36, v35

    .line 1902
    .local v36, "_tmpMRequiresCharging":Z
    move/from16 v35, v6

    move/from16 v6, v36

    .end local v36    # "_tmpMRequiresCharging":Z
    .local v6, "_tmpMRequiresCharging":Z
    .local v35, "_cursorIndexOfMRequiresCharging":I
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1905
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1906
    .local v36, "_tmp_2":I
    if-eqz v36, :cond_1

    move/from16 v37, v34

    goto :goto_2

    :cond_1
    const/16 v37, 0x0

    :goto_2
    move/from16 v38, v37

    .line 1907
    .local v38, "_tmpMRequiresDeviceIdle":Z
    move/from16 v37, v6

    move/from16 v6, v38

    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .local v6, "_tmpMRequiresDeviceIdle":Z
    .local v37, "_tmpMRequiresCharging":Z
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1910
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 1911
    .local v38, "_tmp_3":I
    if-eqz v38, :cond_2

    move/from16 v39, v34

    goto :goto_3

    :cond_2
    const/16 v39, 0x0

    :goto_3
    move/from16 v40, v39

    .line 1912
    .local v40, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v39, v6

    move/from16 v6, v40

    .end local v40    # "_tmpMRequiresBatteryNotLow":Z
    .local v6, "_tmpMRequiresBatteryNotLow":Z
    .local v39, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1915
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 1916
    .local v40, "_tmp_4":I
    if-eqz v40, :cond_3

    move/from16 v41, v34

    goto :goto_4

    :cond_3
    const/16 v41, 0x0

    :goto_4
    move/from16 v42, v41

    .line 1917
    .local v42, "_tmpMRequiresStorageNotLow":Z
    move/from16 v41, v6

    move/from16 v6, v42

    .end local v42    # "_tmpMRequiresStorageNotLow":Z
    .local v6, "_tmpMRequiresStorageNotLow":Z
    .local v41, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1919
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v44, v42

    .line 1920
    .local v44, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v43, v6

    move/from16 v42, v7

    move-wide/from16 v6, v44

    .end local v7    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .local v6, "_tmpMTriggerContentUpdateDelay":J
    .local v42, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v43, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v6, v7}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1922
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    move-wide/from16 v46, v44

    .line 1923
    .local v46, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v44, v6

    move-wide/from16 v6, v46

    .end local v46    # "_tmpMTriggerMaxContentDelay":J
    .local v6, "_tmpMTriggerMaxContentDelay":J
    .restart local v44    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v6, v7}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1926
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v46

    .line 1927
    .local v46, "_tmp_5":[B
    invoke-static/range {v46 .. v46}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v47

    move-object/from16 v48, v47

    .line 1928
    .local v48, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    move-wide/from16 v49, v6

    move-object/from16 v6, v48

    .end local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v6, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v49, "_tmpMTriggerMaxContentDelay":J
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 1929
    new-instance v7, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v47, v6

    move-object/from16 v6, v30

    .end local v30    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v6, "_tmpWorkerClassName":Ljava/lang/String;
    .local v47, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    invoke-direct {v7, v4, v6}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    .local v7, "_item":Landroidx/work/impl/model/WorkSpec;
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1932
    .local v30, "_tmp_6":I
    move-object/from16 v48, v4

    .end local v4    # "_tmpId":Ljava/lang/String;
    .local v48, "_tmpId":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v4

    iput-object v4, v7, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 1933
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1935
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1936
    .local v4, "_tmp_7":[B
    move/from16 v51, v1

    .end local v1    # "_cursorIndexOfInput":I
    .local v51, "_cursorIndexOfInput":I
    invoke-static {v4}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v7, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 1938
    move/from16 v1, v28

    .end local v28    # "_cursorIndexOfOutput":I
    .local v1, "_cursorIndexOfOutput":I
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 1939
    .local v28, "_tmp_8":[B
    move/from16 v52, v1

    .end local v1    # "_cursorIndexOfOutput":I
    .local v52, "_cursorIndexOfOutput":I
    invoke-static/range {v28 .. v28}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v7, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 1940
    move-object/from16 v53, v4

    move/from16 v1, v18

    move/from16 v18, v3

    .end local v3    # "_cursorIndexOfInputMergerClassName":I
    .end local v4    # "_tmp_7":[B
    .local v1, "_cursorIndexOfInitialDelay":I
    .local v18, "_cursorIndexOfInputMergerClassName":I
    .local v53, "_tmp_7":[B
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1941
    move v4, v8

    move/from16 v3, v19

    move/from16 v19, v9

    .end local v8    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v9    # "_cursorIndexOfMRequiresStorageNotLow":I
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v4, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v19, "_cursorIndexOfMRequiresStorageNotLow":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1942
    move v9, v3

    move/from16 v8, v20

    move/from16 v20, v4

    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v8, "_cursorIndexOfFlexDuration":I
    .local v9, "_cursorIndexOfIntervalDuration":I
    .local v20, "_cursorIndexOfMRequiresBatteryNotLow":I
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1943
    move/from16 v3, v21

    .end local v21    # "_cursorIndexOfRunAttemptCount":I
    .local v3, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v7, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1945
    move/from16 v4, v22

    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .local v4, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1946
    .local v21, "_tmp_9":I
    move/from16 v22, v1

    .end local v1    # "_cursorIndexOfInitialDelay":I
    .local v22, "_cursorIndexOfInitialDelay":I
    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v7, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 1947
    move/from16 v54, v4

    move/from16 v1, v23

    move/from16 v23, v3

    .end local v3    # "_cursorIndexOfRunAttemptCount":I
    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v23, "_cursorIndexOfRunAttemptCount":I
    .local v54, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1948
    move v4, v8

    move/from16 v3, v24

    move/from16 v24, v9

    .end local v8    # "_cursorIndexOfFlexDuration":I
    .end local v9    # "_cursorIndexOfIntervalDuration":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v4, "_cursorIndexOfFlexDuration":I
    .local v24, "_cursorIndexOfIntervalDuration":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1949
    move v9, v3

    move/from16 v8, v25

    move/from16 v25, v4

    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v8, "_cursorIndexOfMinimumRetentionDuration":I
    .local v9, "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfFlexDuration":I
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1950
    move v4, v8

    move/from16 v3, v26

    move/from16 v26, v9

    .end local v8    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v9    # "_cursorIndexOfPeriodStartTime":I
    .local v3, "_cursorIndexOfScheduleRequestedAt":I
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfPeriodStartTime":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1952
    move/from16 v8, v27

    .end local v27    # "_cursorIndexOfRunInForeground":I
    .local v8, "_cursorIndexOfRunInForeground":I
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1953
    .local v9, "_tmp_10":I
    if-eqz v9, :cond_4

    move/from16 v27, v1

    move/from16 v1, v34

    goto :goto_5

    :cond_4
    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "_cursorIndexOfBackoffDelayDuration":I
    .local v27, "_cursorIndexOfBackoffDelayDuration":I
    :goto_5
    iput-boolean v1, v7, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 1954
    iput-object v0, v7, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1955
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1956
    move/from16 v9, v19

    move/from16 v21, v23

    move/from16 v19, v24

    move/from16 v24, v26

    move/from16 v23, v27

    move/from16 v13, v31

    move/from16 v0, v32

    move/from16 v6, v35

    move/from16 v7, v42

    move/from16 v1, v51

    move/from16 v28, v52

    move/from16 v26, v3

    move/from16 v27, v8

    move/from16 v3, v18

    move/from16 v8, v20

    move/from16 v18, v22

    move/from16 v20, v25

    move/from16 v22, v54

    move/from16 v25, v4

    .end local v0    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v6    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v7    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v9    # "_tmp_10":I
    .end local v13    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v21    # "_tmp_9":I
    .end local v28    # "_tmp_8":[B
    .end local v29    # "_tmp":I
    .end local v30    # "_tmp_6":I
    .end local v33    # "_tmp_1":I
    .end local v36    # "_tmp_2":I
    .end local v37    # "_tmpMRequiresCharging":Z
    .end local v38    # "_tmp_3":I
    .end local v39    # "_tmpMRequiresDeviceIdle":Z
    .end local v40    # "_tmp_4":I
    .end local v41    # "_tmpMRequiresBatteryNotLow":Z
    .end local v43    # "_tmpMRequiresStorageNotLow":Z
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .end local v46    # "_tmp_5":[B
    .end local v47    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .end local v48    # "_tmpId":Ljava/lang/String;
    .end local v49    # "_tmpMTriggerMaxContentDelay":J
    .end local v53    # "_tmp_7":[B
    goto/16 :goto_0

    .line 1957
    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v31    # "_cursorIndexOfId":I
    .end local v32    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v35    # "_cursorIndexOfMRequiresCharging":I
    .end local v42    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v51    # "_cursorIndexOfInput":I
    .end local v52    # "_cursorIndexOfOutput":I
    .end local v54    # "_cursorIndexOfBackoffPolicy":I
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    .local v1, "_cursorIndexOfInput":I
    .local v3, "_cursorIndexOfInputMergerClassName":I
    .local v6, "_cursorIndexOfMRequiresCharging":I
    .local v7, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v8, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v9, "_cursorIndexOfMRequiresStorageNotLow":I
    .local v13, "_cursorIndexOfId":I
    .local v18, "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfIntervalDuration":I
    .local v20, "_cursorIndexOfFlexDuration":I
    .local v21, "_cursorIndexOfRunAttemptCount":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfScheduleRequestedAt":I
    .local v27, "_cursorIndexOfRunInForeground":I
    .local v28, "_cursorIndexOfOutput":I
    :cond_5
    nop

    .line 1959
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1960
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1957
    return-object v2

    .line 1959
    .end local v0    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v1    # "_cursorIndexOfInput":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v3    # "_cursorIndexOfInputMergerClassName":I
    .end local v6    # "_cursorIndexOfMRequiresCharging":I
    .end local v7    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v8    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v9    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v10    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v11    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v12    # "_cursorIndexOfMContentUriTriggers":I
    .end local v13    # "_cursorIndexOfId":I
    .end local v14    # "_cursorIndexOfState":I
    .end local v15    # "_cursorIndexOfWorkerClassName":I
    .end local v18    # "_cursorIndexOfInitialDelay":I
    .end local v19    # "_cursorIndexOfIntervalDuration":I
    .end local v20    # "_cursorIndexOfFlexDuration":I
    .end local v21    # "_cursorIndexOfRunAttemptCount":I
    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .end local v23    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v24    # "_cursorIndexOfPeriodStartTime":I
    .end local v25    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v26    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v27    # "_cursorIndexOfRunInForeground":I
    .end local v28    # "_cursorIndexOfOutput":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1960
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1961
    throw v0
.end method

.method public getScheduleRequestedAtLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1480
    const-string v0, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    .line 1481
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1482
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1483
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 1484
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1486
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1488
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v3

    const-string/jumbo v4, "workspec"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$14;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$14;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v3, v4, v5, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    return-object v3
.end method

.method public getScheduledWork()Ljava/util/List;
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1744
    move-object/from16 v1, p0

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 1745
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1746
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1747
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 1749
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1750
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    const-string v6, "requires_charging"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 1751
    .local v6, "_cursorIndexOfMRequiresCharging":I
    const-string v7, "requires_device_idle"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1752
    .local v7, "_cursorIndexOfMRequiresDeviceIdle":I
    const-string v8, "requires_battery_not_low"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1753
    .local v8, "_cursorIndexOfMRequiresBatteryNotLow":I
    const-string v9, "requires_storage_not_low"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1754
    .local v9, "_cursorIndexOfMRequiresStorageNotLow":I
    const-string/jumbo v10, "trigger_content_update_delay"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1755
    .local v10, "_cursorIndexOfMTriggerContentUpdateDelay":I
    const-string/jumbo v11, "trigger_max_content_delay"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1756
    .local v11, "_cursorIndexOfMTriggerMaxContentDelay":I
    const-string v12, "content_uri_triggers"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1757
    .local v12, "_cursorIndexOfMContentUriTriggers":I
    const-string v13, "id"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1758
    .local v13, "_cursorIndexOfId":I
    const-string v14, "state"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1759
    .local v14, "_cursorIndexOfState":I
    const-string/jumbo v15, "worker_class_name"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1760
    .local v15, "_cursorIndexOfWorkerClassName":I
    const-string v3, "input_merger_class_name"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1761
    .local v3, "_cursorIndexOfInputMergerClassName":I
    const-string v1, "input"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1762
    .local v1, "_cursorIndexOfInput":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "output"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1763
    .local v2, "_cursorIndexOfOutput":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_2
    const-string v4, "initial_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1764
    .local v4, "_cursorIndexOfInitialDelay":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfInitialDelay":I
    .local v18, "_cursorIndexOfInitialDelay":I
    const-string v4, "interval_duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1765
    .local v4, "_cursorIndexOfIntervalDuration":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfIntervalDuration":I
    .local v19, "_cursorIndexOfIntervalDuration":I
    const-string v4, "flex_duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1766
    .local v4, "_cursorIndexOfFlexDuration":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v20, "_cursorIndexOfFlexDuration":I
    const-string v4, "run_attempt_count"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1767
    .local v4, "_cursorIndexOfRunAttemptCount":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfRunAttemptCount":I
    .local v21, "_cursorIndexOfRunAttemptCount":I
    const-string v4, "backoff_policy"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1768
    .local v4, "_cursorIndexOfBackoffPolicy":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    const-string v4, "backoff_delay_duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1769
    .local v4, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfBackoffDelayDuration":I
    .local v23, "_cursorIndexOfBackoffDelayDuration":I
    const-string v4, "period_start_time"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1770
    .local v4, "_cursorIndexOfPeriodStartTime":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfPeriodStartTime":I
    .local v24, "_cursorIndexOfPeriodStartTime":I
    const-string v4, "minimum_retention_duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1771
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v25, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v4, "schedule_requested_at"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1772
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v26, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1773
    .local v4, "_cursorIndexOfRunInForeground":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRunInForeground":I
    .local v27, "_cursorIndexOfRunInForeground":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v28, v2

    .end local v2    # "_cursorIndexOfOutput":I
    .local v28, "_cursorIndexOfOutput":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 1774
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1777
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1779
    .local v4, "_tmpId":Ljava/lang/String;
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v29

    .line 1781
    .local v30, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v29, Landroidx/work/Constraints;

    invoke-direct/range {v29 .. v29}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v31, v29

    .line 1784
    .local v31, "_tmpConstraints":Landroidx/work/Constraints;
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1785
    .local v29, "_tmp":I
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v32

    move-object/from16 v33, v32

    .line 1786
    .local v33, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v31, v13

    move-object/from16 v13, v33

    .end local v33    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Landroidx/work/Constraints;
    .local v13, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v31, "_cursorIndexOfId":I
    .local v32, "_cursorIndexOfMRequiredNetworkType":I
    invoke-virtual {v0, v13}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 1789
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1790
    .local v33, "_tmp_1":I
    const/16 v34, 0x1

    if-eqz v33, :cond_0

    move/from16 v35, v34

    goto :goto_1

    :cond_0
    const/16 v35, 0x0

    :goto_1
    move/from16 v36, v35

    .line 1791
    .local v36, "_tmpMRequiresCharging":Z
    move/from16 v35, v6

    move/from16 v6, v36

    .end local v36    # "_tmpMRequiresCharging":Z
    .local v6, "_tmpMRequiresCharging":Z
    .local v35, "_cursorIndexOfMRequiresCharging":I
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1794
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1795
    .local v36, "_tmp_2":I
    if-eqz v36, :cond_1

    move/from16 v37, v34

    goto :goto_2

    :cond_1
    const/16 v37, 0x0

    :goto_2
    move/from16 v38, v37

    .line 1796
    .local v38, "_tmpMRequiresDeviceIdle":Z
    move/from16 v37, v6

    move/from16 v6, v38

    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .local v6, "_tmpMRequiresDeviceIdle":Z
    .local v37, "_tmpMRequiresCharging":Z
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1799
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 1800
    .local v38, "_tmp_3":I
    if-eqz v38, :cond_2

    move/from16 v39, v34

    goto :goto_3

    :cond_2
    const/16 v39, 0x0

    :goto_3
    move/from16 v40, v39

    .line 1801
    .local v40, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v39, v6

    move/from16 v6, v40

    .end local v40    # "_tmpMRequiresBatteryNotLow":Z
    .local v6, "_tmpMRequiresBatteryNotLow":Z
    .local v39, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1804
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 1805
    .local v40, "_tmp_4":I
    if-eqz v40, :cond_3

    move/from16 v41, v34

    goto :goto_4

    :cond_3
    const/16 v41, 0x0

    :goto_4
    move/from16 v42, v41

    .line 1806
    .local v42, "_tmpMRequiresStorageNotLow":Z
    move/from16 v41, v6

    move/from16 v6, v42

    .end local v42    # "_tmpMRequiresStorageNotLow":Z
    .local v6, "_tmpMRequiresStorageNotLow":Z
    .local v41, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1808
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v44, v42

    .line 1809
    .local v44, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v43, v6

    move/from16 v42, v7

    move-wide/from16 v6, v44

    .end local v7    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .local v6, "_tmpMTriggerContentUpdateDelay":J
    .local v42, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v43, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v6, v7}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1811
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    move-wide/from16 v46, v44

    .line 1812
    .local v46, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v44, v6

    move-wide/from16 v6, v46

    .end local v46    # "_tmpMTriggerMaxContentDelay":J
    .local v6, "_tmpMTriggerMaxContentDelay":J
    .restart local v44    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v6, v7}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1815
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v46

    .line 1816
    .local v46, "_tmp_5":[B
    invoke-static/range {v46 .. v46}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v47

    move-object/from16 v48, v47

    .line 1817
    .local v48, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    move-wide/from16 v49, v6

    move-object/from16 v6, v48

    .end local v48    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v6, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v49, "_tmpMTriggerMaxContentDelay":J
    invoke-virtual {v0, v6}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 1818
    new-instance v7, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v47, v6

    move-object/from16 v6, v30

    .end local v30    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v6, "_tmpWorkerClassName":Ljava/lang/String;
    .local v47, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    invoke-direct {v7, v4, v6}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    .local v7, "_item":Landroidx/work/impl/model/WorkSpec;
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1821
    .local v30, "_tmp_6":I
    move-object/from16 v48, v4

    .end local v4    # "_tmpId":Ljava/lang/String;
    .local v48, "_tmpId":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v4

    iput-object v4, v7, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 1822
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1824
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1825
    .local v4, "_tmp_7":[B
    move/from16 v51, v1

    .end local v1    # "_cursorIndexOfInput":I
    .local v51, "_cursorIndexOfInput":I
    invoke-static {v4}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v7, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 1827
    move/from16 v1, v28

    .end local v28    # "_cursorIndexOfOutput":I
    .local v1, "_cursorIndexOfOutput":I
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 1828
    .local v28, "_tmp_8":[B
    move/from16 v52, v1

    .end local v1    # "_cursorIndexOfOutput":I
    .local v52, "_cursorIndexOfOutput":I
    invoke-static/range {v28 .. v28}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1

    iput-object v1, v7, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 1829
    move-object/from16 v53, v4

    move/from16 v1, v18

    move/from16 v18, v3

    .end local v3    # "_cursorIndexOfInputMergerClassName":I
    .end local v4    # "_tmp_7":[B
    .local v1, "_cursorIndexOfInitialDelay":I
    .local v18, "_cursorIndexOfInputMergerClassName":I
    .local v53, "_tmp_7":[B
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1830
    move v4, v8

    move/from16 v3, v19

    move/from16 v19, v9

    .end local v8    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v9    # "_cursorIndexOfMRequiresStorageNotLow":I
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v4, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v19, "_cursorIndexOfMRequiresStorageNotLow":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1831
    move v9, v3

    move/from16 v8, v20

    move/from16 v20, v4

    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v8, "_cursorIndexOfFlexDuration":I
    .local v9, "_cursorIndexOfIntervalDuration":I
    .local v20, "_cursorIndexOfMRequiresBatteryNotLow":I
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1832
    move/from16 v3, v21

    .end local v21    # "_cursorIndexOfRunAttemptCount":I
    .local v3, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v7, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1834
    move/from16 v4, v22

    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .local v4, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1835
    .local v21, "_tmp_9":I
    move/from16 v22, v1

    .end local v1    # "_cursorIndexOfInitialDelay":I
    .local v22, "_cursorIndexOfInitialDelay":I
    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v7, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 1836
    move/from16 v54, v4

    move/from16 v1, v23

    move/from16 v23, v3

    .end local v3    # "_cursorIndexOfRunAttemptCount":I
    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v23, "_cursorIndexOfRunAttemptCount":I
    .local v54, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1837
    move v4, v8

    move/from16 v3, v24

    move/from16 v24, v9

    .end local v8    # "_cursorIndexOfFlexDuration":I
    .end local v9    # "_cursorIndexOfIntervalDuration":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v4, "_cursorIndexOfFlexDuration":I
    .local v24, "_cursorIndexOfIntervalDuration":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1838
    move v9, v3

    move/from16 v8, v25

    move/from16 v25, v4

    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v8, "_cursorIndexOfMinimumRetentionDuration":I
    .local v9, "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfFlexDuration":I
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1839
    move v4, v8

    move/from16 v3, v26

    move/from16 v26, v9

    .end local v8    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v9    # "_cursorIndexOfPeriodStartTime":I
    .local v3, "_cursorIndexOfScheduleRequestedAt":I
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfPeriodStartTime":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1841
    move/from16 v8, v27

    .end local v27    # "_cursorIndexOfRunInForeground":I
    .local v8, "_cursorIndexOfRunInForeground":I
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1842
    .local v9, "_tmp_10":I
    if-eqz v9, :cond_4

    move/from16 v27, v1

    move/from16 v1, v34

    goto :goto_5

    :cond_4
    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "_cursorIndexOfBackoffDelayDuration":I
    .local v27, "_cursorIndexOfBackoffDelayDuration":I
    :goto_5
    iput-boolean v1, v7, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 1843
    iput-object v0, v7, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1844
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1845
    move/from16 v9, v19

    move/from16 v21, v23

    move/from16 v19, v24

    move/from16 v24, v26

    move/from16 v23, v27

    move/from16 v13, v31

    move/from16 v0, v32

    move/from16 v6, v35

    move/from16 v7, v42

    move/from16 v1, v51

    move/from16 v28, v52

    move/from16 v26, v3

    move/from16 v27, v8

    move/from16 v3, v18

    move/from16 v8, v20

    move/from16 v18, v22

    move/from16 v20, v25

    move/from16 v22, v54

    move/from16 v25, v4

    .end local v0    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v6    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v7    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v9    # "_tmp_10":I
    .end local v13    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v21    # "_tmp_9":I
    .end local v28    # "_tmp_8":[B
    .end local v29    # "_tmp":I
    .end local v30    # "_tmp_6":I
    .end local v33    # "_tmp_1":I
    .end local v36    # "_tmp_2":I
    .end local v37    # "_tmpMRequiresCharging":Z
    .end local v38    # "_tmp_3":I
    .end local v39    # "_tmpMRequiresDeviceIdle":Z
    .end local v40    # "_tmp_4":I
    .end local v41    # "_tmpMRequiresBatteryNotLow":Z
    .end local v43    # "_tmpMRequiresStorageNotLow":Z
    .end local v44    # "_tmpMTriggerContentUpdateDelay":J
    .end local v46    # "_tmp_5":[B
    .end local v47    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .end local v48    # "_tmpId":Ljava/lang/String;
    .end local v49    # "_tmpMTriggerMaxContentDelay":J
    .end local v53    # "_tmp_7":[B
    goto/16 :goto_0

    .line 1846
    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v31    # "_cursorIndexOfId":I
    .end local v32    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v35    # "_cursorIndexOfMRequiresCharging":I
    .end local v42    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v51    # "_cursorIndexOfInput":I
    .end local v52    # "_cursorIndexOfOutput":I
    .end local v54    # "_cursorIndexOfBackoffPolicy":I
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    .local v1, "_cursorIndexOfInput":I
    .local v3, "_cursorIndexOfInputMergerClassName":I
    .local v6, "_cursorIndexOfMRequiresCharging":I
    .local v7, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v8, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v9, "_cursorIndexOfMRequiresStorageNotLow":I
    .local v13, "_cursorIndexOfId":I
    .local v18, "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfIntervalDuration":I
    .local v20, "_cursorIndexOfFlexDuration":I
    .local v21, "_cursorIndexOfRunAttemptCount":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfScheduleRequestedAt":I
    .local v27, "_cursorIndexOfRunInForeground":I
    .local v28, "_cursorIndexOfOutput":I
    :cond_5
    nop

    .line 1848
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1849
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1846
    return-object v2

    .line 1848
    .end local v0    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v1    # "_cursorIndexOfInput":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v3    # "_cursorIndexOfInputMergerClassName":I
    .end local v6    # "_cursorIndexOfMRequiresCharging":I
    .end local v7    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v8    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v9    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v10    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v11    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v12    # "_cursorIndexOfMContentUriTriggers":I
    .end local v13    # "_cursorIndexOfId":I
    .end local v14    # "_cursorIndexOfState":I
    .end local v15    # "_cursorIndexOfWorkerClassName":I
    .end local v18    # "_cursorIndexOfInitialDelay":I
    .end local v19    # "_cursorIndexOfIntervalDuration":I
    .end local v20    # "_cursorIndexOfFlexDuration":I
    .end local v21    # "_cursorIndexOfRunAttemptCount":I
    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .end local v23    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v24    # "_cursorIndexOfPeriodStartTime":I
    .end local v25    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v26    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v27    # "_cursorIndexOfRunInForeground":I
    .end local v28    # "_cursorIndexOfOutput":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1849
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1850
    throw v0
.end method

.method public getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 715
    const-string v0, "SELECT state FROM workspec WHERE id=?"

    .line 716
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT state FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 717
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 718
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 719
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 723
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 724
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 727
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 729
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 730
    .local v4, "_tmp":I
    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 731
    .local v4, "_result":Landroidx/work/WorkInfo$State;
    goto :goto_1

    .line 732
    .end local v4    # "_result":Landroidx/work/WorkInfo$State;
    :cond_1
    const/4 v4, 0x0

    .line 734
    .restart local v4    # "_result":Landroidx/work/WorkInfo$State;
    :goto_1
    nop

    .line 736
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 737
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 734
    return-object v4

    .line 736
    .end local v4    # "_result":Landroidx/work/WorkInfo$State;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 737
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 738
    throw v4
.end method

.method public getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1434
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1435
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1436
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1437
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 1438
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1440
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1442
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1443
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1445
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1446
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1448
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1449
    .local v6, "_item":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 1451
    :cond_1
    nop

    .line 1453
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1454
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1451
    return-object v4

    .line 1453
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1454
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1455
    throw v4
.end method

.method public getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1408
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1409
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1410
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1411
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 1412
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1414
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1416
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1417
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1419
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1420
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1422
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1423
    .local v6, "_item":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 1425
    :cond_1
    nop

    .line 1427
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1428
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1425
    return-object v4

    .line 1427
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1428
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1429
    throw v4
.end method

.method public getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 56
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 382
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?"

    .line 383
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 384
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 385
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 386
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 390
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 391
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v5, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 393
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 394
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    const-string v9, "requires_charging"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 395
    .local v9, "_cursorIndexOfMRequiresCharging":I
    const-string v10, "requires_device_idle"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 396
    .local v10, "_cursorIndexOfMRequiresDeviceIdle":I
    const-string v11, "requires_battery_not_low"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 397
    .local v11, "_cursorIndexOfMRequiresBatteryNotLow":I
    const-string v12, "requires_storage_not_low"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 398
    .local v12, "_cursorIndexOfMRequiresStorageNotLow":I
    const-string/jumbo v13, "trigger_content_update_delay"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 399
    .local v13, "_cursorIndexOfMTriggerContentUpdateDelay":I
    const-string/jumbo v14, "trigger_max_content_delay"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 400
    .local v14, "_cursorIndexOfMTriggerMaxContentDelay":I
    const-string v15, "content_uri_triggers"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 401
    .local v15, "_cursorIndexOfMContentUriTriggers":I
    const-string v4, "id"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 402
    .local v4, "_cursorIndexOfId":I
    const-string v8, "state"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 403
    .local v8, "_cursorIndexOfState":I
    const-string/jumbo v1, "worker_class_name"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 404
    .local v1, "_cursorIndexOfWorkerClassName":I
    const-string v2, "input_merger_class_name"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 405
    .local v2, "_cursorIndexOfInputMergerClassName":I
    move-object/from16 v16, v3

    .end local v3    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v3, "input"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 406
    .local v3, "_cursorIndexOfInput":I
    move/from16 v17, v6

    .end local v6    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v6, "output"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    .local v6, "_cursorIndexOfOutput":I
    move-object/from16 v18, v5

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string v5, "initial_delay"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 408
    .local v5, "_cursorIndexOfInitialDelay":I
    move/from16 v19, v5

    .end local v5    # "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfInitialDelay":I
    const-string v5, "interval_duration"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 409
    .local v5, "_cursorIndexOfIntervalDuration":I
    move/from16 v20, v5

    .end local v5    # "_cursorIndexOfIntervalDuration":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    const-string v5, "flex_duration"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 410
    .local v5, "_cursorIndexOfFlexDuration":I
    move/from16 v21, v5

    .end local v5    # "_cursorIndexOfFlexDuration":I
    .local v21, "_cursorIndexOfFlexDuration":I
    const-string v5, "run_attempt_count"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 411
    .local v5, "_cursorIndexOfRunAttemptCount":I
    move/from16 v22, v5

    .end local v5    # "_cursorIndexOfRunAttemptCount":I
    .local v22, "_cursorIndexOfRunAttemptCount":I
    const-string v5, "backoff_policy"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 412
    .local v5, "_cursorIndexOfBackoffPolicy":I
    move/from16 v23, v5

    .end local v5    # "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    const-string v5, "backoff_delay_duration"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 413
    .local v5, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v24, v5

    .end local v5    # "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    const-string v5, "period_start_time"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 414
    .local v5, "_cursorIndexOfPeriodStartTime":I
    move/from16 v25, v5

    .end local v5    # "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfPeriodStartTime":I
    const-string v5, "minimum_retention_duration"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 415
    .local v5, "_cursorIndexOfMinimumRetentionDuration":I
    move/from16 v26, v5

    .end local v5    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v26, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v5, "schedule_requested_at"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 416
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v27, v5

    .end local v5    # "_cursorIndexOfScheduleRequestedAt":I
    .local v27, "_cursorIndexOfScheduleRequestedAt":I
    const-string v5, "run_in_foreground"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 418
    .local v5, "_cursorIndexOfRunInForeground":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 420
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v28

    .line 422
    .local v29, "_tmpId":Ljava/lang/String;
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v30, v28

    .line 424
    .local v30, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v28, Landroidx/work/Constraints;

    invoke-direct/range {v28 .. v28}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v31, v28

    .line 427
    .local v31, "_tmpConstraints":Landroidx/work/Constraints;
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 428
    .local v28, "_tmp":I
    invoke-static/range {v28 .. v28}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v32

    move-object/from16 v33, v32

    .line 429
    .local v33, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v31, v1

    move-object/from16 v1, v33

    .end local v33    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Landroidx/work/Constraints;
    .local v1, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v31, "_cursorIndexOfWorkerClassName":I
    .local v32, "_cursorIndexOfMRequiredNetworkType":I
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 432
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 433
    .local v33, "_tmp_1":I
    if-eqz v33, :cond_1

    const/16 v34, 0x1

    goto :goto_1

    :cond_1
    const/16 v34, 0x0

    :goto_1
    move/from16 v35, v34

    .line 434
    .local v35, "_tmpMRequiresCharging":Z
    move-object/from16 v34, v1

    move/from16 v1, v35

    .end local v35    # "_tmpMRequiresCharging":Z
    .local v1, "_tmpMRequiresCharging":Z
    .local v34, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 437
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 438
    .local v35, "_tmp_2":I
    if-eqz v35, :cond_2

    const/16 v36, 0x1

    goto :goto_2

    :cond_2
    const/16 v36, 0x0

    :goto_2
    move/from16 v37, v36

    .line 439
    .local v37, "_tmpMRequiresDeviceIdle":Z
    move/from16 v36, v1

    move/from16 v1, v37

    .end local v37    # "_tmpMRequiresDeviceIdle":Z
    .local v1, "_tmpMRequiresDeviceIdle":Z
    .local v36, "_tmpMRequiresCharging":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 442
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 443
    .local v37, "_tmp_3":I
    if-eqz v37, :cond_3

    const/16 v38, 0x1

    goto :goto_3

    :cond_3
    const/16 v38, 0x0

    :goto_3
    move/from16 v39, v38

    .line 444
    .local v39, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v38, v1

    move/from16 v1, v39

    .end local v39    # "_tmpMRequiresBatteryNotLow":Z
    .local v1, "_tmpMRequiresBatteryNotLow":Z
    .local v38, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 447
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 448
    .local v39, "_tmp_4":I
    if-eqz v39, :cond_4

    const/16 v40, 0x1

    goto :goto_4

    :cond_4
    const/16 v40, 0x0

    :goto_4
    move/from16 v41, v40

    .line 449
    .local v41, "_tmpMRequiresStorageNotLow":Z
    move/from16 v40, v1

    move/from16 v1, v41

    .end local v41    # "_tmpMRequiresStorageNotLow":Z
    .local v1, "_tmpMRequiresStorageNotLow":Z
    .local v40, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 451
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-wide/from16 v43, v41

    .line 452
    .local v43, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v41, v9

    move/from16 v42, v10

    move-wide/from16 v9, v43

    .end local v10    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v43    # "_tmpMTriggerContentUpdateDelay":J
    .local v9, "_tmpMTriggerContentUpdateDelay":J
    .local v41, "_cursorIndexOfMRequiresCharging":I
    .local v42, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v9, v10}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 454
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    move-wide/from16 v45, v43

    .line 455
    .local v45, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v43, v9

    move-wide/from16 v9, v45

    .end local v45    # "_tmpMTriggerMaxContentDelay":J
    .local v9, "_tmpMTriggerMaxContentDelay":J
    .restart local v43    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v9, v10}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 458
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v45

    .line 459
    .local v45, "_tmp_5":[B
    invoke-static/range {v45 .. v45}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v46

    move-object/from16 v47, v46

    .line 460
    .local v47, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    move/from16 v46, v1

    move-object/from16 v1, v47

    .end local v47    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v46, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 461
    move-object/from16 v47, v1

    .end local v1    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .restart local v47    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    new-instance v1, Landroidx/work/impl/model/WorkSpec;

    move/from16 v48, v4

    move-object/from16 v4, v29

    move-wide/from16 v54, v9

    move-object/from16 v9, v30

    move-wide/from16 v29, v54

    .end local v30    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v4, "_tmpId":Ljava/lang/String;
    .local v9, "_tmpWorkerClassName":Ljava/lang/String;
    .local v29, "_tmpMTriggerMaxContentDelay":J
    .local v48, "_cursorIndexOfId":I
    invoke-direct {v1, v4, v9}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .local v1, "_result":Landroidx/work/impl/model/WorkSpec;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 464
    .local v10, "_tmp_6":I
    move-object/from16 v49, v4

    .end local v4    # "_tmpId":Ljava/lang/String;
    .local v49, "_tmpId":Ljava/lang/String;
    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v4

    iput-object v4, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 465
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 467
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 468
    .local v4, "_tmp_7":[B
    move/from16 v50, v2

    .end local v2    # "_cursorIndexOfInputMergerClassName":I
    .local v50, "_cursorIndexOfInputMergerClassName":I
    invoke-static {v4}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 470
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 471
    .local v2, "_tmp_8":[B
    move/from16 v51, v3

    .end local v3    # "_cursorIndexOfInput":I
    .local v51, "_cursorIndexOfInput":I
    invoke-static {v2}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 472
    move-object/from16 v52, v9

    move/from16 v3, v19

    move/from16 v19, v8

    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v3, "_cursorIndexOfInitialDelay":I
    .local v19, "_cursorIndexOfState":I
    .local v52, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 473
    move-object v9, v2

    move/from16 v8, v20

    move/from16 v20, v3

    .end local v2    # "_tmp_8":[B
    .end local v3    # "_cursorIndexOfInitialDelay":I
    .local v8, "_cursorIndexOfIntervalDuration":I
    .local v9, "_tmp_8":[B
    .local v20, "_cursorIndexOfInitialDelay":I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 474
    move/from16 v2, v21

    move-object/from16 v21, v4

    .end local v4    # "_tmp_7":[B
    .local v2, "_cursorIndexOfFlexDuration":I
    .local v21, "_tmp_7":[B
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 475
    move/from16 v3, v22

    .end local v22    # "_cursorIndexOfRunAttemptCount":I
    .local v3, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 477
    move/from16 v4, v23

    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .local v4, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 478
    .local v22, "_tmp_9":I
    move/from16 v23, v2

    .end local v2    # "_cursorIndexOfFlexDuration":I
    .local v23, "_cursorIndexOfFlexDuration":I
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 479
    move/from16 v53, v4

    move/from16 v2, v24

    move/from16 v24, v3

    .end local v3    # "_cursorIndexOfRunAttemptCount":I
    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfRunAttemptCount":I
    .local v53, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 480
    move v4, v8

    move/from16 v3, v25

    move-object/from16 v25, v9

    .end local v8    # "_cursorIndexOfIntervalDuration":I
    .end local v9    # "_tmp_8":[B
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v4, "_cursorIndexOfIntervalDuration":I
    .local v25, "_tmp_8":[B
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 481
    move v9, v2

    move/from16 v8, v26

    move/from16 v26, v3

    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .local v8, "_cursorIndexOfMinimumRetentionDuration":I
    .local v9, "_cursorIndexOfBackoffDelayDuration":I
    .local v26, "_cursorIndexOfPeriodStartTime":I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 482
    move/from16 v2, v27

    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfIntervalDuration":I
    .local v2, "_cursorIndexOfScheduleRequestedAt":I
    .local v27, "_cursorIndexOfIntervalDuration":I
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 484
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 485
    .local v3, "_tmp_10":I
    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v1, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 486
    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    .end local v0    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v3    # "_tmp_10":I
    .end local v10    # "_tmp_6":I
    .end local v21    # "_tmp_7":[B
    .end local v22    # "_tmp_9":I
    .end local v25    # "_tmp_8":[B
    .end local v28    # "_tmp":I
    .end local v29    # "_tmpMTriggerMaxContentDelay":J
    .end local v33    # "_tmp_1":I
    .end local v34    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v35    # "_tmp_2":I
    .end local v36    # "_tmpMRequiresCharging":Z
    .end local v37    # "_tmp_3":I
    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .end local v39    # "_tmp_4":I
    .end local v40    # "_tmpMRequiresBatteryNotLow":Z
    .end local v43    # "_tmpMTriggerContentUpdateDelay":J
    .end local v45    # "_tmp_5":[B
    .end local v46    # "_tmpMRequiresStorageNotLow":Z
    .end local v47    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .end local v49    # "_tmpId":Ljava/lang/String;
    .end local v52    # "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_6

    .line 488
    .end local v31    # "_cursorIndexOfWorkerClassName":I
    .end local v32    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v41    # "_cursorIndexOfMRequiresCharging":I
    .end local v42    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v48    # "_cursorIndexOfId":I
    .end local v50    # "_cursorIndexOfInputMergerClassName":I
    .end local v51    # "_cursorIndexOfInput":I
    .end local v53    # "_cursorIndexOfBackoffPolicy":I
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    .local v1, "_cursorIndexOfWorkerClassName":I
    .local v2, "_cursorIndexOfInputMergerClassName":I
    .local v3, "_cursorIndexOfInput":I
    .local v4, "_cursorIndexOfId":I
    .local v8, "_cursorIndexOfState":I
    .local v9, "_cursorIndexOfMRequiresCharging":I
    .local v10, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v19, "_cursorIndexOfInitialDelay":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    .local v21, "_cursorIndexOfFlexDuration":I
    .local v22, "_cursorIndexOfRunAttemptCount":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    .local v25, "_cursorIndexOfPeriodStartTime":I
    .local v26, "_cursorIndexOfMinimumRetentionDuration":I
    .local v27, "_cursorIndexOfScheduleRequestedAt":I
    :cond_6
    move/from16 v32, v0

    move/from16 v31, v1

    move/from16 v50, v2

    move/from16 v51, v3

    move/from16 v48, v4

    move/from16 v41, v9

    move/from16 v42, v10

    move/from16 v53, v23

    move/from16 v9, v24

    move/from16 v2, v27

    move/from16 v27, v20

    move/from16 v23, v21

    move/from16 v24, v22

    move/from16 v20, v19

    move/from16 v19, v8

    move/from16 v8, v26

    move/from16 v26, v25

    .end local v0    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v1    # "_cursorIndexOfWorkerClassName":I
    .end local v3    # "_cursorIndexOfInput":I
    .end local v4    # "_cursorIndexOfId":I
    .end local v10    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v21    # "_cursorIndexOfFlexDuration":I
    .end local v22    # "_cursorIndexOfRunAttemptCount":I
    .end local v25    # "_cursorIndexOfPeriodStartTime":I
    .local v2, "_cursorIndexOfScheduleRequestedAt":I
    .local v8, "_cursorIndexOfMinimumRetentionDuration":I
    .local v9, "_cursorIndexOfBackoffDelayDuration":I
    .local v19, "_cursorIndexOfState":I
    .local v20, "_cursorIndexOfInitialDelay":I
    .local v23, "_cursorIndexOfFlexDuration":I
    .local v24, "_cursorIndexOfRunAttemptCount":I
    .local v26, "_cursorIndexOfPeriodStartTime":I
    .local v27, "_cursorIndexOfIntervalDuration":I
    .restart local v31    # "_cursorIndexOfWorkerClassName":I
    .restart local v32    # "_cursorIndexOfMRequiredNetworkType":I
    .restart local v41    # "_cursorIndexOfMRequiresCharging":I
    .restart local v42    # "_cursorIndexOfMRequiresDeviceIdle":I
    .restart local v48    # "_cursorIndexOfId":I
    .restart local v50    # "_cursorIndexOfInputMergerClassName":I
    .restart local v51    # "_cursorIndexOfInput":I
    .restart local v53    # "_cursorIndexOfBackoffPolicy":I
    const/4 v1, 0x0

    .line 490
    .local v1, "_result":Landroidx/work/impl/model/WorkSpec;
    :goto_6
    nop

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 490
    return-object v1

    .line 492
    .end local v1    # "_result":Landroidx/work/impl/model/WorkSpec;
    .end local v2    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v5    # "_cursorIndexOfRunInForeground":I
    .end local v6    # "_cursorIndexOfOutput":I
    .end local v8    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v9    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v11    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v12    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v13    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v14    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v15    # "_cursorIndexOfMContentUriTriggers":I
    .end local v19    # "_cursorIndexOfState":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v23    # "_cursorIndexOfFlexDuration":I
    .end local v24    # "_cursorIndexOfRunAttemptCount":I
    .end local v26    # "_cursorIndexOfPeriodStartTime":I
    .end local v27    # "_cursorIndexOfIntervalDuration":I
    .end local v31    # "_cursorIndexOfWorkerClassName":I
    .end local v32    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v41    # "_cursorIndexOfMRequiresCharging":I
    .end local v42    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v48    # "_cursorIndexOfId":I
    .end local v50    # "_cursorIndexOfInputMergerClassName":I
    .end local v51    # "_cursorIndexOfInput":I
    .end local v53    # "_cursorIndexOfBackoffPolicy":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v5

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_7

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v6, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v17, v6

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_7

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move/from16 v17, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 494
    throw v0
.end method

.method public getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation

    .line 629
    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 630
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 631
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 632
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 633
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 637
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 638
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 640
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "id"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 641
    .local v4, "_cursorIndexOfId":I
    const-string v5, "state"

    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 642
    .local v5, "_cursorIndexOfState":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 643
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 645
    new-instance v7, Landroidx/work/impl/model/WorkSpec$IdAndState;

    invoke-direct {v7}, Landroidx/work/impl/model/WorkSpec$IdAndState;-><init>()V

    .line 646
    .local v7, "_item":Landroidx/work/impl/model/WorkSpec$IdAndState;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 648
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 649
    .local v8, "_tmp":I
    invoke-static {v8}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v9

    iput-object v9, v7, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 650
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    nop

    .end local v7    # "_item":Landroidx/work/impl/model/WorkSpec$IdAndState;
    .end local v8    # "_tmp":I
    goto :goto_1

    .line 652
    :cond_1
    nop

    .line 654
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 655
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 652
    return-object v6

    .line 654
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_cursorIndexOfState":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 655
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 656
    throw v4
.end method

.method public getWorkSpecs(Ljava/util/List;)[Landroidx/work/impl/model/WorkSpec;
    .locals 61
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroidx/work/impl/model/WorkSpec;"
        }
    .end annotation

    .line 499
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 500
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v0, "SELECT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v0, " FROM workspec WHERE id IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 504
    .local v3, "_inputSize":I
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 505
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "_sql":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x0

    .line 508
    .local v5, "_argCount":I
    invoke-static {v4, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v6

    .line 509
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 510
    .local v0, "_argIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "_argIndex":I
    .local v8, "_argIndex":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .local v0, "_item":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 512
    invoke-virtual {v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 514
    :cond_0
    invoke-virtual {v6, v8, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 516
    :goto_1
    nop

    .end local v0    # "_item":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 517
    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 519
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v9, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 521
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 522
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    const-string v10, "requires_charging"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 523
    .local v10, "_cursorIndexOfMRequiresCharging":I
    const-string v11, "requires_device_idle"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 524
    .local v11, "_cursorIndexOfMRequiresDeviceIdle":I
    const-string v12, "requires_battery_not_low"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 525
    .local v12, "_cursorIndexOfMRequiresBatteryNotLow":I
    const-string v13, "requires_storage_not_low"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 526
    .local v13, "_cursorIndexOfMRequiresStorageNotLow":I
    const-string/jumbo v14, "trigger_content_update_delay"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 527
    .local v14, "_cursorIndexOfMTriggerContentUpdateDelay":I
    const-string/jumbo v15, "trigger_max_content_delay"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 528
    .local v15, "_cursorIndexOfMTriggerMaxContentDelay":I
    const-string v9, "content_uri_triggers"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 529
    .local v9, "_cursorIndexOfMContentUriTriggers":I
    const-string v1, "id"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 530
    .local v1, "_cursorIndexOfId":I
    move-object/from16 v16, v2

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v16, "_stringBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    const-string v2, "state"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 531
    .local v2, "_cursorIndexOfState":I
    move/from16 v17, v3

    .end local v3    # "_inputSize":I
    .local v17, "_inputSize":I
    :try_start_2
    const-string/jumbo v3, "worker_class_name"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 532
    .local v3, "_cursorIndexOfWorkerClassName":I
    move-object/from16 v18, v4

    .end local v4    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    :try_start_3
    const-string v4, "input_merger_class_name"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 533
    .local v4, "_cursorIndexOfInputMergerClassName":I
    move/from16 v19, v5

    .end local v5    # "_argCount":I
    .local v19, "_argCount":I
    :try_start_4
    const-string v5, "input"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 534
    .local v5, "_cursorIndexOfInput":I
    move/from16 v20, v8

    .end local v8    # "_argIndex":I
    .local v20, "_argIndex":I
    :try_start_5
    const-string v8, "output"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 535
    .local v8, "_cursorIndexOfOutput":I
    move-object/from16 v21, v6

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v21, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_6
    const-string v6, "initial_delay"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 536
    .local v6, "_cursorIndexOfInitialDelay":I
    move/from16 v22, v6

    .end local v6    # "_cursorIndexOfInitialDelay":I
    .local v22, "_cursorIndexOfInitialDelay":I
    const-string v6, "interval_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 537
    .local v6, "_cursorIndexOfIntervalDuration":I
    move/from16 v23, v6

    .end local v6    # "_cursorIndexOfIntervalDuration":I
    .local v23, "_cursorIndexOfIntervalDuration":I
    const-string v6, "flex_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 538
    .local v6, "_cursorIndexOfFlexDuration":I
    move/from16 v24, v6

    .end local v6    # "_cursorIndexOfFlexDuration":I
    .local v24, "_cursorIndexOfFlexDuration":I
    const-string v6, "run_attempt_count"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 539
    .local v6, "_cursorIndexOfRunAttemptCount":I
    move/from16 v25, v6

    .end local v6    # "_cursorIndexOfRunAttemptCount":I
    .local v25, "_cursorIndexOfRunAttemptCount":I
    const-string v6, "backoff_policy"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 540
    .local v6, "_cursorIndexOfBackoffPolicy":I
    move/from16 v26, v6

    .end local v6    # "_cursorIndexOfBackoffPolicy":I
    .local v26, "_cursorIndexOfBackoffPolicy":I
    const-string v6, "backoff_delay_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 541
    .local v6, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v27, v6

    .end local v6    # "_cursorIndexOfBackoffDelayDuration":I
    .local v27, "_cursorIndexOfBackoffDelayDuration":I
    const-string v6, "period_start_time"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 542
    .local v6, "_cursorIndexOfPeriodStartTime":I
    move/from16 v28, v6

    .end local v6    # "_cursorIndexOfPeriodStartTime":I
    .local v28, "_cursorIndexOfPeriodStartTime":I
    const-string v6, "minimum_retention_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 543
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move/from16 v29, v6

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v29, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v6, "schedule_requested_at"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 544
    .local v6, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v30, v6

    .end local v6    # "_cursorIndexOfScheduleRequestedAt":I
    .local v30, "_cursorIndexOfScheduleRequestedAt":I
    const-string v6, "run_in_foreground"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 545
    .local v6, "_cursorIndexOfRunInForeground":I
    move/from16 v31, v6

    .end local v6    # "_cursorIndexOfRunInForeground":I
    .local v31, "_cursorIndexOfRunInForeground":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [Landroidx/work/impl/model/WorkSpec;

    .line 546
    .local v6, "_result":[Landroidx/work/impl/model/WorkSpec;
    const/16 v32, 0x0

    .line 547
    .local v32, "_index":I
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 550
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v34, v33

    .line 552
    .local v34, "_tmpId":Ljava/lang/String;
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v35, v33

    .line 554
    .local v35, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v33, Landroidx/work/Constraints;

    invoke-direct/range {v33 .. v33}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v36, v33

    .line 557
    .local v36, "_tmpConstraints":Landroidx/work/Constraints;
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 558
    .local v33, "_tmp":I
    invoke-static/range {v33 .. v33}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v37

    move-object/from16 v38, v37

    .line 559
    .local v38, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v37, v0

    move-object/from16 v0, v36

    move/from16 v36, v1

    move-object/from16 v1, v38

    .end local v38    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Landroidx/work/Constraints;
    .local v1, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .local v36, "_cursorIndexOfId":I
    .local v37, "_cursorIndexOfMRequiredNetworkType":I
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 562
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 563
    .local v38, "_tmp_1":I
    const/16 v39, 0x1

    if-eqz v38, :cond_2

    move/from16 v40, v39

    goto :goto_3

    :cond_2
    const/16 v40, 0x0

    :goto_3
    move/from16 v41, v40

    .line 564
    .local v41, "_tmpMRequiresCharging":Z
    move-object/from16 v40, v1

    move/from16 v1, v41

    .end local v41    # "_tmpMRequiresCharging":Z
    .local v1, "_tmpMRequiresCharging":Z
    .local v40, "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 567
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 568
    .local v41, "_tmp_2":I
    if-eqz v41, :cond_3

    move/from16 v42, v39

    goto :goto_4

    :cond_3
    const/16 v42, 0x0

    :goto_4
    move/from16 v43, v42

    .line 569
    .local v43, "_tmpMRequiresDeviceIdle":Z
    move/from16 v42, v1

    move/from16 v1, v43

    .end local v43    # "_tmpMRequiresDeviceIdle":Z
    .local v1, "_tmpMRequiresDeviceIdle":Z
    .local v42, "_tmpMRequiresCharging":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 572
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 573
    .local v43, "_tmp_3":I
    if-eqz v43, :cond_4

    move/from16 v44, v39

    goto :goto_5

    :cond_4
    const/16 v44, 0x0

    :goto_5
    move/from16 v45, v44

    .line 574
    .local v45, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v44, v1

    move/from16 v1, v45

    .end local v45    # "_tmpMRequiresBatteryNotLow":Z
    .local v1, "_tmpMRequiresBatteryNotLow":Z
    .local v44, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 577
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 578
    .local v45, "_tmp_4":I
    if-eqz v45, :cond_5

    move/from16 v46, v39

    goto :goto_6

    :cond_5
    const/16 v46, 0x0

    :goto_6
    move/from16 v47, v46

    .line 579
    .local v47, "_tmpMRequiresStorageNotLow":Z
    move/from16 v46, v1

    move/from16 v1, v47

    .end local v47    # "_tmpMRequiresStorageNotLow":Z
    .local v1, "_tmpMRequiresStorageNotLow":Z
    .local v46, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 581
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    move-wide/from16 v49, v47

    .line 582
    .local v49, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v47, v10

    move/from16 v48, v11

    move-wide/from16 v10, v49

    .end local v11    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v49    # "_tmpMTriggerContentUpdateDelay":J
    .local v10, "_tmpMTriggerContentUpdateDelay":J
    .local v47, "_cursorIndexOfMRequiresCharging":I
    .local v48, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v10, v11}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 584
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    move-wide/from16 v51, v49

    .line 585
    .local v51, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v49, v10

    move-wide/from16 v10, v51

    .end local v51    # "_tmpMTriggerMaxContentDelay":J
    .local v10, "_tmpMTriggerMaxContentDelay":J
    .restart local v49    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v10, v11}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 588
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v51

    .line 589
    .local v51, "_tmp_5":[B
    invoke-static/range {v51 .. v51}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v52

    move-object/from16 v53, v52

    .line 590
    .local v53, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    move/from16 v52, v1

    move-object/from16 v1, v53

    .end local v53    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .local v52, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 591
    move-object/from16 v53, v1

    .end local v1    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .restart local v53    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    new-instance v1, Landroidx/work/impl/model/WorkSpec;

    move/from16 v54, v3

    move-object/from16 v3, v34

    move/from16 v34, v9

    move-object/from16 v9, v35

    .end local v35    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v3, "_tmpId":Ljava/lang/String;
    .local v9, "_tmpWorkerClassName":Ljava/lang/String;
    .local v34, "_cursorIndexOfMContentUriTriggers":I
    .local v54, "_cursorIndexOfWorkerClassName":I
    invoke-direct {v1, v3, v9}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v1, "_item_1":Landroidx/work/impl/model/WorkSpec;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 594
    .local v35, "_tmp_6":I
    move/from16 v55, v2

    .end local v2    # "_cursorIndexOfState":I
    .local v55, "_cursorIndexOfState":I
    invoke-static/range {v35 .. v35}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 595
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 597
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 598
    .local v2, "_tmp_7":[B
    move-object/from16 v56, v3

    .end local v3    # "_tmpId":Ljava/lang/String;
    .local v56, "_tmpId":Ljava/lang/String;
    invoke-static {v2}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 600
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 601
    .local v3, "_tmp_8":[B
    move-object/from16 v57, v2

    .end local v2    # "_tmp_7":[B
    .local v57, "_tmp_7":[B
    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 602
    move-object/from16 v58, v3

    move/from16 v2, v22

    move/from16 v22, v4

    .end local v3    # "_tmp_8":[B
    .end local v4    # "_cursorIndexOfInputMergerClassName":I
    .local v2, "_cursorIndexOfInitialDelay":I
    .local v22, "_cursorIndexOfInputMergerClassName":I
    .local v58, "_tmp_8":[B
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 603
    move/from16 v3, v23

    move/from16 v23, v5

    .end local v5    # "_cursorIndexOfInput":I
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v23, "_cursorIndexOfInput":I
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 604
    move v5, v2

    move/from16 v4, v24

    move/from16 v24, v3

    .end local v2    # "_cursorIndexOfInitialDelay":I
    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .local v4, "_cursorIndexOfFlexDuration":I
    .local v5, "_cursorIndexOfInitialDelay":I
    .local v24, "_cursorIndexOfIntervalDuration":I
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 605
    move/from16 v2, v25

    .end local v25    # "_cursorIndexOfRunAttemptCount":I
    .local v2, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 607
    move/from16 v3, v26

    .end local v26    # "_cursorIndexOfBackoffPolicy":I
    .local v3, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 608
    .local v25, "_tmp_9":I
    move/from16 v26, v2

    .end local v2    # "_cursorIndexOfRunAttemptCount":I
    .local v26, "_cursorIndexOfRunAttemptCount":I
    invoke-static/range {v25 .. v25}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 609
    move/from16 v59, v3

    move/from16 v2, v27

    move/from16 v27, v4

    .end local v3    # "_cursorIndexOfBackoffPolicy":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    .local v27, "_cursorIndexOfFlexDuration":I
    .local v59, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 610
    move/from16 v3, v28

    move/from16 v28, v5

    .end local v5    # "_cursorIndexOfInitialDelay":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v28, "_cursorIndexOfInitialDelay":I
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 611
    move v5, v2

    move/from16 v4, v29

    move/from16 v29, v3

    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    .local v5, "_cursorIndexOfBackoffDelayDuration":I
    .local v29, "_cursorIndexOfPeriodStartTime":I
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 612
    move/from16 v2, v30

    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v2, "_cursorIndexOfScheduleRequestedAt":I
    .local v30, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 614
    move/from16 v3, v31

    .end local v31    # "_cursorIndexOfRunInForeground":I
    .local v3, "_cursorIndexOfRunInForeground":I
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 615
    .local v4, "_tmp_10":I
    if-eqz v4, :cond_6

    move/from16 v31, v2

    move/from16 v2, v39

    goto :goto_7

    :cond_6
    move/from16 v31, v2

    const/4 v2, 0x0

    .end local v2    # "_cursorIndexOfScheduleRequestedAt":I
    .local v31, "_cursorIndexOfScheduleRequestedAt":I
    :goto_7
    iput-boolean v2, v1, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 616
    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 617
    aput-object v1, v6, v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 618
    nop

    .end local v0    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v1    # "_item_1":Landroidx/work/impl/model/WorkSpec;
    .end local v4    # "_tmp_10":I
    .end local v9    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v10    # "_tmpMTriggerMaxContentDelay":J
    .end local v25    # "_tmp_9":I
    .end local v33    # "_tmp":I
    .end local v35    # "_tmp_6":I
    .end local v38    # "_tmp_1":I
    .end local v40    # "_tmpMRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v41    # "_tmp_2":I
    .end local v42    # "_tmpMRequiresCharging":Z
    .end local v43    # "_tmp_3":I
    .end local v44    # "_tmpMRequiresDeviceIdle":Z
    .end local v45    # "_tmp_4":I
    .end local v46    # "_tmpMRequiresBatteryNotLow":Z
    .end local v49    # "_tmpMTriggerContentUpdateDelay":J
    .end local v51    # "_tmp_5":[B
    .end local v52    # "_tmpMRequiresStorageNotLow":Z
    .end local v53    # "_tmpMContentUriTriggers":Landroidx/work/ContentUriTriggers;
    .end local v56    # "_tmpId":Ljava/lang/String;
    .end local v57    # "_tmp_7":[B
    .end local v58    # "_tmp_8":[B
    add-int/lit8 v32, v32, 0x1

    .line 619
    move/from16 v4, v22

    move/from16 v25, v26

    move/from16 v22, v28

    move/from16 v28, v29

    move/from16 v29, v30

    move/from16 v30, v31

    move/from16 v9, v34

    move/from16 v1, v36

    move/from16 v0, v37

    move/from16 v10, v47

    move/from16 v11, v48

    move/from16 v2, v55

    move/from16 v26, v59

    move/from16 v31, v3

    move/from16 v3, v54

    move/from16 v60, v27

    move/from16 v27, v5

    move/from16 v5, v23

    move/from16 v23, v24

    move/from16 v24, v60

    goto/16 :goto_2

    .line 620
    .end local v34    # "_cursorIndexOfMContentUriTriggers":I
    .end local v36    # "_cursorIndexOfId":I
    .end local v37    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v47    # "_cursorIndexOfMRequiresCharging":I
    .end local v48    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v54    # "_cursorIndexOfWorkerClassName":I
    .end local v55    # "_cursorIndexOfState":I
    .end local v59    # "_cursorIndexOfBackoffPolicy":I
    .local v0, "_cursorIndexOfMRequiredNetworkType":I
    .local v1, "_cursorIndexOfId":I
    .local v2, "_cursorIndexOfState":I
    .local v3, "_cursorIndexOfWorkerClassName":I
    .local v4, "_cursorIndexOfInputMergerClassName":I
    .local v5, "_cursorIndexOfInput":I
    .local v9, "_cursorIndexOfMContentUriTriggers":I
    .local v10, "_cursorIndexOfMRequiresCharging":I
    .restart local v11    # "_cursorIndexOfMRequiresDeviceIdle":I
    .local v22, "_cursorIndexOfInitialDelay":I
    .local v23, "_cursorIndexOfIntervalDuration":I
    .local v24, "_cursorIndexOfFlexDuration":I
    .local v25, "_cursorIndexOfRunAttemptCount":I
    .local v26, "_cursorIndexOfBackoffPolicy":I
    .local v27, "_cursorIndexOfBackoffDelayDuration":I
    .local v28, "_cursorIndexOfPeriodStartTime":I
    .local v29, "_cursorIndexOfMinimumRetentionDuration":I
    .local v30, "_cursorIndexOfScheduleRequestedAt":I
    .local v31, "_cursorIndexOfRunInForeground":I
    :cond_7
    nop

    .line 622
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 623
    invoke-virtual/range {v21 .. v21}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 620
    return-object v6

    .line 622
    .end local v0    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v1    # "_cursorIndexOfId":I
    .end local v2    # "_cursorIndexOfState":I
    .end local v3    # "_cursorIndexOfWorkerClassName":I
    .end local v4    # "_cursorIndexOfInputMergerClassName":I
    .end local v5    # "_cursorIndexOfInput":I
    .end local v6    # "_result":[Landroidx/work/impl/model/WorkSpec;
    .end local v8    # "_cursorIndexOfOutput":I
    .end local v9    # "_cursorIndexOfMContentUriTriggers":I
    .end local v10    # "_cursorIndexOfMRequiresCharging":I
    .end local v11    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v12    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v13    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v14    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v15    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v22    # "_cursorIndexOfInitialDelay":I
    .end local v23    # "_cursorIndexOfIntervalDuration":I
    .end local v24    # "_cursorIndexOfFlexDuration":I
    .end local v25    # "_cursorIndexOfRunAttemptCount":I
    .end local v26    # "_cursorIndexOfBackoffPolicy":I
    .end local v27    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v28    # "_cursorIndexOfPeriodStartTime":I
    .end local v29    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v30    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v31    # "_cursorIndexOfRunInForeground":I
    .end local v32    # "_index":I
    :catchall_0
    move-exception v0

    goto :goto_8

    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v21, v6

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_8

    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v8, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_8

    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_3
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_8

    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_4
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_8

    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_5
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_8

    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_6
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 623
    invoke-virtual/range {v21 .. v21}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 624
    throw v0
.end method

.method public getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .locals 17
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 743
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?"

    .line 744
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 745
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 746
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 747
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 751
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 752
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 754
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 756
    .local v4, "_cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v0, "id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 757
    .local v0, "_cursorIndexOfId":I
    const-string v7, "state"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 758
    .local v7, "_cursorIndexOfState":I
    const-string v8, "output"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 759
    .local v8, "_cursorIndexOfOutput":I
    const-string v9, "run_attempt_count"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 760
    .local v9, "_cursorIndexOfRunAttemptCount":I
    new-instance v10, Landroidx/collection/ArrayMap;

    invoke-direct {v10}, Landroidx/collection/ArrayMap;-><init>()V

    .line 761
    .local v10, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 762
    .local v11, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 763
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 764
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 765
    .local v12, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 766
    .local v13, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v13, :cond_2

    .line 767
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 768
    invoke-virtual {v10, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .end local v12    # "_tmpKey":Ljava/lang/String;
    .end local v13    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 772
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 773
    .local v12, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 774
    .local v13, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v13, :cond_3

    .line 775
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 776
    invoke-virtual {v11, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .end local v12    # "_tmpKey_1":Ljava/lang/String;
    .end local v13    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_3
    goto :goto_1

    .line 780
    :cond_4
    const/4 v12, -0x1

    invoke-interface {v4, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 781
    invoke-direct {v1, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 782
    invoke-direct {v1, v11}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 784
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 785
    const/4 v12, 0x0

    .line 786
    .local v12, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_5

    .line 787
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 788
    .local v13, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v10, v13}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v12, v14

    .line 790
    .end local v13    # "_tmpKey_2":Ljava/lang/String;
    :cond_5
    if-nez v12, :cond_6

    .line 791
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 793
    :cond_6
    const/4 v13, 0x0

    .line 794
    .local v13, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_7

    .line 795
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 796
    .local v14, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v11, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object v13, v15

    .line 798
    .end local v14    # "_tmpKey_3":Ljava/lang/String;
    :cond_7
    if-nez v13, :cond_8

    .line 799
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 801
    :cond_8
    new-instance v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v14}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 802
    .local v14, "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 804
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 805
    .local v15, "_tmp":I
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v16, "_cursorIndexOfId":I
    invoke-static {v15}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v0

    iput-object v0, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 807
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 808
    .local v0, "_tmp_1":[B
    invoke-static {v0}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 809
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 810
    iput-object v12, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 811
    iput-object v13, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 812
    .end local v0    # "_tmp_1":[B
    .end local v12    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v15    # "_tmp":I
    goto :goto_2

    .line 813
    .end local v14    # "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v16    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    :cond_9
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v16    # "_cursorIndexOfId":I
    const/4 v0, 0x0

    move-object v14, v0

    .line 815
    .restart local v14    # "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    :goto_2
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    nop

    .line 818
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 819
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 822
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 816
    return-object v14

    .line 818
    .end local v7    # "_cursorIndexOfState":I
    .end local v8    # "_cursorIndexOfOutput":I
    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .end local v10    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v14    # "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v16    # "_cursorIndexOfId":I
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 819
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 820
    nop

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local p1    # "id":Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 822
    .end local v4    # "_cursor":Landroid/database/Cursor;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local p1    # "id":Ljava/lang/String;
    :catchall_1
    move-exception v0

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 823
    throw v0
.end method

.method public getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 828
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 829
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 831
    .local v3, "_inputSize":I
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 832
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, "_sql":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x0

    .line 835
    .local v5, "_argCount":I
    invoke-static {v4, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v6

    .line 836
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 837
    .local v0, "_argIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "_argIndex":I
    .local v8, "_argIndex":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 838
    .local v0, "_item":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 839
    invoke-virtual {v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 841
    :cond_0
    invoke-virtual {v6, v8, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 843
    :goto_1
    nop

    .end local v0    # "_item":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 844
    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 846
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 848
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v6, v9, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object v7, v0

    .line 850
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 851
    .local v0, "_cursorIndexOfId":I
    const-string v9, "state"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 852
    .local v9, "_cursorIndexOfState":I
    const-string v10, "output"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 853
    .local v10, "_cursorIndexOfOutput":I
    const-string v11, "run_attempt_count"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 854
    .local v11, "_cursorIndexOfRunAttemptCount":I
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 855
    .local v12, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 856
    .local v13, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v14, :cond_5

    .line 857
    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 858
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 859
    .local v14, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 860
    .local v15, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_3

    .line 861
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v16

    .line 862
    invoke-virtual {v12, v14, v15}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v14    # "_tmpKey":Ljava/lang/String;
    .end local v15    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_2

    .line 866
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 867
    .local v14, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 868
    .local v15, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v15, :cond_4

    .line 869
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v16

    .line 870
    invoke-virtual {v13, v14, v15}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 872
    .end local v14    # "_tmpKey_1":Ljava/lang/String;
    .end local v15    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_4
    goto :goto_2

    .line 912
    .end local v0    # "_cursorIndexOfId":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfRunAttemptCount":I
    .end local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_7

    .line 874
    .restart local v0    # "_cursorIndexOfId":I
    .restart local v9    # "_cursorIndexOfState":I
    .restart local v10    # "_cursorIndexOfOutput":I
    .restart local v11    # "_cursorIndexOfRunAttemptCount":I
    .restart local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_5
    const/4 v14, -0x1

    :try_start_3
    invoke-interface {v7, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 875
    invoke-direct {v1, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 876
    invoke-direct {v1, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 877
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 878
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 880
    const/4 v15, 0x0

    .line 881
    .local v15, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-nez v16, :cond_6

    .line 882
    :try_start_4
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v17, v16

    .line 883
    .local v17, "_tmpKey_2":Ljava/lang/String;
    move-object/from16 v16, v2

    move-object/from16 v2, v17

    .end local v17    # "_tmpKey_2":Ljava/lang/String;
    .local v2, "_tmpKey_2":Ljava/lang/String;
    .local v16, "_stringBuilder":Ljava/lang/StringBuilder;
    :try_start_5
    invoke-virtual {v12, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v15, v17

    goto :goto_4

    .line 912
    .end local v0    # "_cursorIndexOfId":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfRunAttemptCount":I
    .end local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v15    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_7

    .line 881
    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v0    # "_cursorIndexOfId":I
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "_cursorIndexOfState":I
    .restart local v10    # "_cursorIndexOfOutput":I
    .restart local v11    # "_cursorIndexOfRunAttemptCount":I
    .restart local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .restart local v15    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v16, v2

    .line 885
    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    :goto_4
    if-nez v15, :cond_7

    .line 886
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v15, v2

    goto :goto_5

    .line 912
    .end local v0    # "_cursorIndexOfId":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfRunAttemptCount":I
    .end local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v15    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_7

    .line 888
    .restart local v0    # "_cursorIndexOfId":I
    .restart local v9    # "_cursorIndexOfState":I
    .restart local v10    # "_cursorIndexOfOutput":I
    .restart local v11    # "_cursorIndexOfRunAttemptCount":I
    .restart local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .restart local v15    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    :goto_5
    const/4 v2, 0x0

    .line 889
    .local v2, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :try_start_6
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v17, :cond_8

    .line 890
    :try_start_7
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 891
    .local v18, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v2, v18

    .end local v18    # "_tmpKey_3":Ljava/lang/String;
    .local v2, "_tmpKey_3":Ljava/lang/String;
    .local v17, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-virtual {v13, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v17, v18

    move-object/from16 v2, v17

    goto :goto_6

    .line 889
    .end local v17    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v2, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_8
    move-object/from16 v17, v2

    .line 893
    :goto_6
    if-nez v2, :cond_9

    .line 894
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v2, v17

    .line 896
    :cond_9
    :try_start_8
    new-instance v17, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct/range {v17 .. v17}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v18, v17

    .line 897
    .local v18, "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move/from16 v17, v3

    .end local v3    # "_inputSize":I
    .local v17, "_inputSize":I
    :try_start_9
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v19, v0

    move-object/from16 v0, v18

    .end local v18    # "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v19, "_cursorIndexOfId":I
    iput-object v3, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 899
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 900
    .local v3, "_tmp":I
    move-object/from16 v18, v4

    .end local v4    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    :try_start_a
    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v4

    iput-object v4, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 902
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 903
    .local v4, "_tmp_1":[B
    move/from16 v20, v3

    .end local v3    # "_tmp":I
    .local v20, "_tmp":I
    invoke-static {v4}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    iput-object v3, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 904
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 905
    iput-object v15, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 906
    iput-object v2, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 907
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v0, v19

    .end local v0    # "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v2    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v4    # "_tmp_1":[B
    .end local v15    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "_tmp":I
    goto/16 :goto_3

    .line 912
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfRunAttemptCount":I
    .end local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_cursorIndexOfId":I
    .local v4, "_sql":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v18    # "_sql":Ljava/lang/String;
    goto :goto_7

    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .local v3, "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    goto :goto_7

    .line 909
    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .local v0, "_cursorIndexOfId":I
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v9    # "_cursorIndexOfState":I
    .restart local v10    # "_cursorIndexOfOutput":I
    .restart local v11    # "_cursorIndexOfRunAttemptCount":I
    .restart local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :cond_a
    move/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v0    # "_cursorIndexOfId":I
    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_cursorIndexOfId":I
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 910
    nop

    .line 912
    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 913
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 916
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 910
    return-object v14

    .line 912
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfRunAttemptCount":I
    .end local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v19    # "_cursorIndexOfId":I
    :catchall_5
    move-exception v0

    goto :goto_7

    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    :goto_7
    :try_start_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 913
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 914
    nop

    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 916
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_7
    move-exception v0

    goto :goto_8

    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    :goto_8
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 917
    throw v0
.end method

.method public getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1202
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1203
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 1204
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 1205
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 1206
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1208
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1210
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1211
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1213
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 1215
    .local v4, "_cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v0, "id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1216
    .local v0, "_cursorIndexOfId":I
    const-string v7, "state"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1217
    .local v7, "_cursorIndexOfState":I
    const-string v8, "output"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1218
    .local v8, "_cursorIndexOfOutput":I
    const-string v9, "run_attempt_count"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1219
    .local v9, "_cursorIndexOfRunAttemptCount":I
    new-instance v10, Landroidx/collection/ArrayMap;

    invoke-direct {v10}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1220
    .local v10, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1221
    .local v11, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1222
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1223
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1224
    .local v12, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1225
    .local v13, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v13, :cond_2

    .line 1226
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 1227
    invoke-virtual {v10, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    .end local v12    # "_tmpKey":Ljava/lang/String;
    .end local v13    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1231
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1232
    .local v12, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1233
    .local v13, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v13, :cond_3

    .line 1234
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 1235
    invoke-virtual {v11, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    .end local v12    # "_tmpKey_1":Ljava/lang/String;
    .end local v13    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_3
    goto :goto_1

    .line 1239
    :cond_4
    const/4 v12, -0x1

    invoke-interface {v4, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1240
    invoke-direct {v1, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 1241
    invoke-direct {v1, v11}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 1242
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1243
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1245
    const/4 v13, 0x0

    .line 1246
    .local v13, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1247
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1248
    .local v14, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v10, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object v13, v15

    .line 1250
    .end local v14    # "_tmpKey_2":Ljava/lang/String;
    :cond_5
    if-nez v13, :cond_6

    .line 1251
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 1253
    :cond_6
    const/4 v14, 0x0

    .line 1254
    .local v14, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1255
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1256
    .local v15, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v11, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 v14, v16

    .line 1258
    .end local v15    # "_tmpKey_3":Ljava/lang/String;
    :cond_7
    if-nez v14, :cond_8

    .line 1259
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v15

    .line 1261
    :cond_8
    new-instance v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v15}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 1262
    .local v15, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 1264
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1265
    .local v2, "_tmp":I
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v16, "_cursorIndexOfId":I
    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v0

    iput-object v0, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 1267
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1268
    .local v0, "_tmp_1":[B
    move/from16 v17, v2

    .end local v2    # "_tmp":I
    .local v17, "_tmp":I
    invoke-static {v0}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 1269
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1270
    iput-object v13, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1271
    iput-object v14, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 1272
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    move-object/from16 v2, p1

    move/from16 v0, v16

    .end local v0    # "_tmp_1":[B
    .end local v13    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v15    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v17    # "_tmp":I
    goto :goto_2

    .line 1274
    .end local v16    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    :cond_9
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v16    # "_cursorIndexOfId":I
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    nop

    .line 1277
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1278
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1281
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1275
    return-object v12

    .line 1277
    .end local v7    # "_cursorIndexOfState":I
    .end local v8    # "_cursorIndexOfOutput":I
    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .end local v10    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v16    # "_cursorIndexOfId":I
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1278
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1279
    nop

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local p1    # "name":Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1281
    .end local v4    # "_cursor":Landroid/database/Cursor;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v0

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1282
    throw v0
.end method

.method public getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1024
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1025
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 1026
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 1027
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 1028
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1030
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1032
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1033
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1035
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 1037
    .local v4, "_cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v0, "id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1038
    .local v0, "_cursorIndexOfId":I
    const-string v7, "state"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1039
    .local v7, "_cursorIndexOfState":I
    const-string v8, "output"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1040
    .local v8, "_cursorIndexOfOutput":I
    const-string v9, "run_attempt_count"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1041
    .local v9, "_cursorIndexOfRunAttemptCount":I
    new-instance v10, Landroidx/collection/ArrayMap;

    invoke-direct {v10}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1042
    .local v10, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1043
    .local v11, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1044
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1045
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1046
    .local v12, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1047
    .local v13, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v13, :cond_2

    .line 1048
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 1049
    invoke-virtual {v10, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .end local v12    # "_tmpKey":Ljava/lang/String;
    .end local v13    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1053
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1054
    .local v12, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1055
    .local v13, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v13, :cond_3

    .line 1056
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 1057
    invoke-virtual {v11, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    .end local v12    # "_tmpKey_1":Ljava/lang/String;
    .end local v13    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_3
    goto :goto_1

    .line 1061
    :cond_4
    const/4 v12, -0x1

    invoke-interface {v4, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1062
    invoke-direct {v1, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 1063
    invoke-direct {v1, v11}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 1064
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1065
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1067
    const/4 v13, 0x0

    .line 1068
    .local v13, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1069
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1070
    .local v14, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v10, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object v13, v15

    .line 1072
    .end local v14    # "_tmpKey_2":Ljava/lang/String;
    :cond_5
    if-nez v13, :cond_6

    .line 1073
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 1075
    :cond_6
    const/4 v14, 0x0

    .line 1076
    .local v14, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1077
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1078
    .local v15, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v11, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 v14, v16

    .line 1080
    .end local v15    # "_tmpKey_3":Ljava/lang/String;
    :cond_7
    if-nez v14, :cond_8

    .line 1081
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v15

    .line 1083
    :cond_8
    new-instance v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v15}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 1084
    .local v15, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 1086
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1087
    .local v2, "_tmp":I
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v16, "_cursorIndexOfId":I
    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v0

    iput-object v0, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 1089
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1090
    .local v0, "_tmp_1":[B
    move/from16 v17, v2

    .end local v2    # "_tmp":I
    .local v17, "_tmp":I
    invoke-static {v0}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v2

    iput-object v2, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 1091
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1092
    iput-object v13, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1093
    iput-object v14, v15, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 1094
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    move-object/from16 v2, p1

    move/from16 v0, v16

    .end local v0    # "_tmp_1":[B
    .end local v13    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v15    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v17    # "_tmp":I
    goto :goto_2

    .line 1096
    .end local v16    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    :cond_9
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v16    # "_cursorIndexOfId":I
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    nop

    .line 1099
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1100
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1103
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1097
    return-object v12

    .line 1099
    .end local v7    # "_cursorIndexOfState":I
    .end local v8    # "_cursorIndexOfOutput":I
    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .end local v10    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v16    # "_cursorIndexOfId":I
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1100
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1101
    nop

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local p1    # "tag":Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1103
    .end local v4    # "_cursor":Landroid/database/Cursor;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local p1    # "tag":Ljava/lang/String;
    :catchall_1
    move-exception v0

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1104
    throw v0
.end method

.method public getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 922
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 923
    .local v0, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 925
    .local v1, "_inputSize":I
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 926
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, "_sql":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x0

    .line 929
    .local v3, "_argCount":I
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 930
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 931
    .local v5, "_argIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 932
    .local v7, "_item":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 933
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 935
    :cond_0
    invoke-virtual {v4, v5, v7}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 937
    :goto_1
    nop

    .end local v7    # "_item":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 938
    goto :goto_0

    .line 939
    :cond_1
    iget-object v6, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v6

    const-string v7, "WorkTag"

    const-string v8, "WorkProgress"

    const-string/jumbo v9, "workspec"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroidx/work/impl/model/WorkSpecDao_Impl$11;

    invoke-direct {v8, p0, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$11;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v9, v8}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v6

    return-object v6
.end method

.method public getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1287
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1288
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1289
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 1290
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 1291
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1293
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1295
    :goto_0
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string v5, "WorkTag"

    const-string v6, "WorkProgress"

    const-string/jumbo v7, "workspec"

    const-string/jumbo v8, "workname"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$13;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$13;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v2, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1109
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1110
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1111
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 1112
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 1113
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1115
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1117
    :goto_0
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string v5, "WorkTag"

    const-string v6, "WorkProgress"

    const-string/jumbo v7, "workspec"

    const-string/jumbo v8, "worktag"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$12;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$12;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v2, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 289
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 290
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 291
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 292
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 296
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 298
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 299
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    nop

    .line 302
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 303
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 300
    return v2

    .line 302
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 303
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 304
    throw v2
.end method

.method public insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 2
    .param p1, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workSpec"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 207
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 209
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 213
    nop

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 213
    throw v0
.end method

.method public markWorkSpecScheduled(Ljava/lang/String;J)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "startTime"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 331
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 332
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 333
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 334
    const/4 v1, 0x2

    .line 335
    if-nez p1, :cond_0

    .line 336
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 340
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 342
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 343
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    nop

    .line 346
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 347
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 344
    return v2

    .line 346
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 347
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 348
    throw v2
.end method

.method public pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
    .locals 3

    .line 368
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 369
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 370
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 372
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 373
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 376
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 377
    nop

    .line 378
    return-void

    .line 375
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 376
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 377
    throw v1
.end method

.method public resetScheduledState()I
    .locals 3

    .line 353
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 354
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 355
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 357
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 358
    .local v1, "_result":I
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    nop

    .line 361
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 362
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 359
    return v1

    .line 361
    .end local v1    # "_result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 362
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 363
    throw v1
.end method

.method public resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 310
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 311
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 312
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 313
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 317
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 319
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 320
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    nop

    .line 323
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 324
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 321
    return v2

    .line 323
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 324
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 325
    throw v2
.end method

.method public setOutput(Ljava/lang/String;Landroidx/work/Data;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "output"    # Landroidx/work/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "output"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 239
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 240
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 242
    .local v1, "_argIndex":I
    invoke-static {p2}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v2

    .line 243
    .local v2, "_tmp":[B
    if-nez v2, :cond_0

    .line 244
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 248
    :goto_0
    const/4 v1, 0x2

    .line 249
    if-nez p1, :cond_1

    .line 250
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 252
    :cond_1
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 254
    :goto_1
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 256
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 257
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 260
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 261
    nop

    .line 262
    return-void

    .line 259
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 260
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v4, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 261
    throw v3
.end method

.method public setPeriodStartTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "periodStartTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "periodStartTime"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 267
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 268
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 269
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 270
    const/4 v1, 0x2

    .line 271
    if-nez p1, :cond_0

    .line 272
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 276
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 278
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 279
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 282
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 283
    nop

    .line 284
    return-void

    .line 281
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 282
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 283
    throw v2
.end method

.method public varargs setState(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I
    .locals 9
    .param p1, "state"    # Landroidx/work/WorkInfo$State;
    .param p2, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "state",
            "ids"
        }
    .end annotation

    .line 2079
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2080
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2081
    .local v0, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE workspec SET state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    const-string v1, " WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    array-length v1, p2

    .line 2085
    .local v1, "_inputSize":I
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 2086
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2088
    .local v2, "_sql":Ljava/lang/String;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v2}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v3

    .line 2089
    .local v3, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v4, 0x1

    .line 2091
    .local v4, "_argIndex":I
    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v5

    .line 2092
    .local v5, "_tmp":I
    int-to-long v6, v5

    invoke-interface {v3, v4, v6, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 2093
    const/4 v4, 0x2

    .line 2094
    array-length v6, p2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, p2, v7

    .line 2095
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 2096
    invoke-interface {v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 2098
    :cond_0
    invoke-interface {v3, v4, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2100
    :goto_1
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 2094
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2102
    :cond_1
    iget-object v6, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 2104
    :try_start_0
    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v6

    .line 2105
    .local v6, "_result":I
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    nop

    .line 2108
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 2106
    return v6

    .line 2108
    .end local v6    # "_result":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 2109
    throw v6
.end method
