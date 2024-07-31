.class public Lcom/amitshekhar/utils/PrefHelper;
.super Ljava/lang/Object;
.source "PrefHelper.java"


# static fields
.field private static final PREFS_SUFFIX:Ljava/lang/String; = ".xml"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static addOrUpdateRow(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amitshekhar/model/RowDataRequest;",
            ">;)",
            "Lcom/amitshekhar/model/UpdateRowResponse;"
        }
    .end annotation

    .line 147
    .local p2, "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v0, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    move-object v3, v0

    .line 149
    .local v3, "updateRowResponse":Lcom/amitshekhar/model/UpdateRowResponse;
    if-nez v1, :cond_0

    .line 150
    return-object v3

    .line 153
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amitshekhar/model/RowDataRequest;

    .line 154
    .local v4, "rowDataKey":Lcom/amitshekhar/model/RowDataRequest;
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amitshekhar/model/RowDataRequest;

    .line 156
    .local v6, "rowDataValue":Lcom/amitshekhar/model/RowDataRequest;
    iget-object v7, v4, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    .line 157
    .local v7, "key":Ljava/lang/String;
    iget-object v8, v6, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    .line 158
    .local v8, "value":Ljava/lang/String;
    iget-object v9, v6, Lcom/amitshekhar/model/RowDataRequest;->dataType:Ljava/lang/String;

    .line 160
    .local v9, "dataType":Ljava/lang/String;
    const-string v10, "null"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 161
    const/4 v8, 0x0

    .line 164
    :cond_1
    move-object/from16 v10, p0

    invoke-virtual {v10, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 167
    .local v11, "preferences":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v0, 0x3

    const/4 v12, 0x2

    sparse-switch v13, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v13, "integer"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v5

    goto :goto_1

    :sswitch_1
    const-string v13, "float"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v0

    goto :goto_1

    :sswitch_2
    const-string v13, "boolean"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v15

    goto :goto_1

    :sswitch_3
    const-string v13, "text"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    :sswitch_4
    const-string v13, "long"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v12

    goto :goto_1

    :sswitch_5
    const-string v13, "string_set"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v14

    goto :goto_1

    :goto_0
    const/4 v13, -0x1

    :goto_1
    if-eqz v13, :cond_9

    if-eq v13, v5, :cond_8

    if-eq v13, v12, :cond_7

    if-eq v13, v0, :cond_6

    if-eq v13, v15, :cond_5

    if-eq v13, v14, :cond_3

    .line 198
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    iput-boolean v5, v3, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    goto/16 :goto_3

    .line 189
    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "jsonArray":Lorg/json/JSONArray;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v12, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 192
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 194
    .end local v13    # "i":I
    :cond_4
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13, v7, v12}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    iput-boolean v5, v3, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 196
    goto :goto_3

    .line 185
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    iput-boolean v5, v3, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 187
    goto :goto_3

    .line 181
    :cond_6
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    iput-boolean v5, v3, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 183
    goto :goto_3

    .line 177
    :cond_7
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v0, v7, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    iput-boolean v5, v3, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 179
    goto :goto_3

    .line 173
    :cond_8
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    iput-boolean v5, v3, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 175
    goto :goto_3

    .line 169
    :cond_9
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    iput-boolean v5, v3, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    nop

    .line 203
    :goto_3
    goto :goto_4

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5dbe24cc -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch
.end method

.method public static deleteRow(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/amitshekhar/model/UpdateRowResponse;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amitshekhar/model/RowDataRequest;",
            ">;)",
            "Lcom/amitshekhar/model/UpdateRowResponse;"
        }
    .end annotation

    .line 211
    .local p2, "rowDataRequests":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/RowDataRequest;>;"
    new-instance v0, Lcom/amitshekhar/model/UpdateRowResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/UpdateRowResponse;-><init>()V

    .line 213
    .local v0, "updateRowResponse":Lcom/amitshekhar/model/UpdateRowResponse;
    if-nez p1, :cond_0

    .line 214
    return-object v0

    .line 217
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amitshekhar/model/RowDataRequest;

    .line 219
    .local v2, "rowDataKey":Lcom/amitshekhar/model/RowDataRequest;
    iget-object v3, v2, Lcom/amitshekhar/model/RowDataRequest;->value:Ljava/lang/String;

    .line 222
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 225
    .local v4, "preferences":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 226
    invoke-interface {v5, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v5

    .line 229
    .local v5, "ex":Ljava/lang/Exception;
    iput-boolean v1, v0, Lcom/amitshekhar/model/UpdateRowResponse;->isSuccessful:Z

    .line 232
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getAllPrefData(Landroid/content/Context;Ljava/lang/String;)Lcom/amitshekhar/model/TableDataResponse;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/amitshekhar/model/TableDataResponse;

    invoke-direct {v0}, Lcom/amitshekhar/model/TableDataResponse;-><init>()V

    .line 90
    .local v0, "response":Lcom/amitshekhar/model/TableDataResponse;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amitshekhar/model/TableDataResponse;->isEditable:Z

    .line 91
    iput-boolean v1, v0, Lcom/amitshekhar/model/TableDataResponse;->isSuccessful:Z

    .line 92
    iput-boolean v1, v0, Lcom/amitshekhar/model/TableDataResponse;->isSelectQuery:Z

    .line 94
    new-instance v2, Lcom/amitshekhar/model/TableDataResponse$TableInfo;

    invoke-direct {v2}, Lcom/amitshekhar/model/TableDataResponse$TableInfo;-><init>()V

    .line 95
    .local v2, "keyInfo":Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    iput-boolean v1, v2, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->isPrimary:Z

    .line 96
    const-string v1, "Key"

    iput-object v1, v2, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->title:Ljava/lang/String;

    .line 98
    new-instance v1, Lcom/amitshekhar/model/TableDataResponse$TableInfo;

    invoke-direct {v1}, Lcom/amitshekhar/model/TableDataResponse$TableInfo;-><init>()V

    .line 99
    .local v1, "valueInfo":Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->isPrimary:Z

    .line 100
    const-string v4, "Value"

    iput-object v4, v1, Lcom/amitshekhar/model/TableDataResponse$TableInfo;->title:Ljava/lang/String;

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    .line 103
    iget-object v4, v0, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v4, v0, Lcom/amitshekhar/model/TableDataResponse;->tableInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/amitshekhar/model/TableDataResponse;->rows:Ljava/util/List;

    .line 108
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 109
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 110
    .local v4, "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 111
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v7, "row":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/TableDataResponse$ColumnData;>;"
    new-instance v8, Lcom/amitshekhar/model/TableDataResponse$ColumnData;

    invoke-direct {v8}, Lcom/amitshekhar/model/TableDataResponse$ColumnData;-><init>()V

    .line 113
    .local v8, "keyColumnData":Lcom/amitshekhar/model/TableDataResponse$ColumnData;
    const-string v9, "text"

    iput-object v9, v8, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    .line 114
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v8, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->value:Ljava/lang/Object;

    .line 116
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;

    invoke-direct {v10}, Lcom/amitshekhar/model/TableDataResponse$ColumnData;-><init>()V

    .line 119
    .local v10, "valueColumnData":Lcom/amitshekhar/model/TableDataResponse$ColumnData;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->value:Ljava/lang/Object;

    .line 120
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 121
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 122
    iput-object v9, v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 124
    const-string v9, "integer"

    iput-object v9, v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    goto :goto_1

    .line 125
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_2

    .line 126
    const-string v9, "long"

    iput-object v9, v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    goto :goto_1

    .line 127
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Float;

    if-eqz v9, :cond_3

    .line 128
    const-string v9, "float"

    iput-object v9, v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    goto :goto_1

    .line 129
    :cond_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_4

    .line 130
    const-string v9, "boolean"

    iput-object v9, v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    goto :goto_1

    .line 131
    :cond_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/util/Set;

    if-eqz v9, :cond_6

    .line 132
    const-string v9, "string_set"

    iput-object v9, v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    goto :goto_1

    .line 135
    :cond_5
    iput-object v9, v10, Lcom/amitshekhar/model/TableDataResponse$ColumnData;->dataType:Ljava/lang/String;

    .line 137
    :cond_6
    :goto_1
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v9, v0, Lcom/amitshekhar/model/TableDataResponse;->rows:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "row":Ljava/util/List;, "Ljava/util/List<Lcom/amitshekhar/model/TableDataResponse$ColumnData;>;"
    .end local v8    # "keyColumnData":Lcom/amitshekhar/model/TableDataResponse$ColumnData;
    .end local v10    # "valueColumnData":Lcom/amitshekhar/model/TableDataResponse$ColumnData;
    goto/16 :goto_0

    .line 141
    :cond_7
    return-object v0
.end method

.method public static getAllPrefTableName(Landroid/content/Context;)Lcom/amitshekhar/model/Response;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/amitshekhar/model/Response;

    invoke-direct {v0}, Lcom/amitshekhar/model/Response;-><init>()V

    .line 76
    .local v0, "response":Lcom/amitshekhar/model/Response;
    invoke-static {p0}, Lcom/amitshekhar/utils/PrefHelper;->getSharedPreferenceTags(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "prefTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, v0, Lcom/amitshekhar/model/Response;->rows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v3    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 82
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amitshekhar/model/Response;->isSuccessful:Z

    .line 84
    return-object v0
.end method

.method public static getSharedPreferenceTags(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "rootPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 60
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "fileName":Ljava/lang/String;
    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 62
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v10, v9

    invoke-virtual {v8, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 69
    return-object v0
.end method
