.class public final Lorg/catrobat/catroid/web/ServerCalls;
.super Ljava/lang/Object;
.source "ServerCalls.java"

# interfaces
.implements Lorg/catrobat/catroid/web/ScratchDataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/web/ServerCalls$UploadCallSuccessCallback;,
        Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;,
        Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;,
        Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;
    }
.end annotation


# static fields
.field public static final BASE_URL_TEST_HTTPS:Ljava/lang/String; = "https://catroid-test.catrob.at/pocketcode/"

.field public static final TAG:Ljava/lang/String;

.field public static useTestUrl:Z


# instance fields
.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private projectId:Ljava/lang/String;

.field private resultString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lorg/catrobat/catroid/web/ServerCalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/web/ServerCalls;->TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lorg/catrobat/catroid/web/ServerCalls;->useTestUrl:Z

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lokhttp3/OkHttpClient;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/catrobat/catroid/web/ServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 97
    return-void
.end method

.method private checkStatusCode200(I)V
    .locals 2
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    .line 464
    sget-object v0, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 467
    return-void

    .line 465
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/web/WebconnectionException;

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private executeUploadCall(Lokhttp3/Request;Lorg/catrobat/catroid/web/ServerCalls$UploadCallSuccessCallback;Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;)V
    .locals 4
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "successCallback"    # Lorg/catrobat/catroid/web/ServerCalls$UploadCallSuccessCallback;
    .param p3, "errorCallback"    # Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;

    .line 324
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 325
    .local v0, "response":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;

    .line 327
    .local v1, "uploadResponse":Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;
    invoke-interface {p2, v1}, Lorg/catrobat/catroid/web/ServerCalls$UploadCallSuccessCallback;->onSuccess(Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;)V

    goto :goto_0

    .line 329
    .end local v1    # "uploadResponse":Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/web/ServerCalls;->TAG:Ljava/lang/String;

    const-string v2, "Upload not successful"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload failed! HTTP Status code was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    goto :goto_1

    .line 335
    .end local v0    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "jsonSyntaxException":Lcom/google/gson/JsonSyntaxException;
    sget-object v1, Lorg/catrobat/catroid/web/ServerCalls;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 v1, 0x3e9

    const-string v2, "JsonSyntaxException"

    invoke-interface {p3, v1, v2}, Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 332
    .end local v0    # "jsonSyntaxException":Lcom/google/gson/JsonSyntaxException;
    :catch_1
    move-exception v0

    .line 333
    .local v0, "ioException":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/web/ServerCalls;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v1, 0x3ea

    const-string v2, "I/O Exception"

    invoke-interface {p3, v1, v2}, Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;->onError(ILjava/lang/String;)V

    .line 338
    .end local v0    # "ioException":Ljava/io/IOException;
    nop

    .line 339
    :goto_1
    return-void
.end method

.method private extractScratchProgramDataListFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 31
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ScratchProgramData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 253
    .local v0, "iso8601LocalDateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 256
    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 257
    .local v4, "programJsonData":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 258
    .local v12, "id":J
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "title":Ljava/lang/String;
    const-string v6, "description"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 260
    .local v14, "notesAndCredits":Ljava/lang/String;
    const-string v6, "instructions"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 261
    .local v15, "instructions":Ljava/lang/String;
    const-string v6, "image"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object/from16 v16, v6

    .line 263
    .local v16, "imageURL":Ljava/lang/String;
    const-string v6, "author"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 264
    .local v11, "authorJsonData":Lorg/json/JSONObject;
    const-string v6, "username"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 266
    .local v17, "ownerUserName":Ljava/lang/String;
    const-string v6, "history"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 267
    .local v10, "historyJsonData":Lorg/json/JSONObject;
    const-string v6, "created"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "createdDateString":Ljava/lang/String;
    const-string v6, "modified"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, "modifiedDateString":Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, "sharedDateString":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 271
    .local v6, "createdDate":Ljava/util/Date;
    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 272
    .local v3, "modifiedDate":Ljava/util/Date;
    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 274
    .local v2, "sharedDate":Ljava/util/Date;
    move-object/from16 v19, v0

    .end local v0    # "iso8601LocalDateFormat":Ljava/text/DateFormat;
    .local v19, "iso8601LocalDateFormat":Ljava/text/DateFormat;
    const-string v0, "stats"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 275
    .local v0, "statisticsJsonData":Lorg/json/JSONObject;
    move-object/from16 v20, v4

    .end local v4    # "programJsonData":Lorg/json/JSONObject;
    .local v20, "programJsonData":Lorg/json/JSONObject;
    const-string v4, "views"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 276
    .local v4, "views":I
    move-object/from16 v21, v6

    .end local v6    # "createdDate":Ljava/util/Date;
    .local v21, "createdDate":Ljava/util/Date;
    const-string v6, "loves"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 277
    .local v6, "loves":I
    move/from16 v22, v6

    .end local v6    # "loves":I
    .local v22, "loves":I
    const-string v6, "favorites"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 279
    .local v6, "favorites":I
    const/16 v23, 0x0

    .line 280
    .local v23, "image":Lcom/google/android/gms/common/images/WebImage;
    if-eqz v16, :cond_1

    .line 281
    move-object/from16 v24, v0

    .end local v0    # "statisticsJsonData":Lorg/json/JSONObject;
    .local v24, "statisticsJsonData":Lorg/json/JSONObject;
    new-instance v0, Lcom/google/android/gms/common/images/WebImage;

    move/from16 v25, v6

    .end local v6    # "favorites":I
    .local v25, "favorites":I
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v26, v7

    .end local v7    # "modifiedDateString":Ljava/lang/String;
    .local v26, "modifiedDateString":Ljava/lang/String;
    const/16 v7, 0x1e0

    move-object/from16 v27, v8

    .end local v8    # "sharedDateString":Ljava/lang/String;
    .local v27, "sharedDateString":Ljava/lang/String;
    const/16 v8, 0x168

    invoke-direct {v0, v6, v7, v8}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    move-object/from16 v23, v0

    goto :goto_2

    .line 280
    .end local v24    # "statisticsJsonData":Lorg/json/JSONObject;
    .end local v25    # "favorites":I
    .end local v26    # "modifiedDateString":Ljava/lang/String;
    .end local v27    # "sharedDateString":Ljava/lang/String;
    .restart local v0    # "statisticsJsonData":Lorg/json/JSONObject;
    .restart local v6    # "favorites":I
    .restart local v7    # "modifiedDateString":Ljava/lang/String;
    .restart local v8    # "sharedDateString":Ljava/lang/String;
    :cond_1
    move-object/from16 v24, v0

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 285
    .end local v0    # "statisticsJsonData":Lorg/json/JSONObject;
    .end local v6    # "favorites":I
    .end local v7    # "modifiedDateString":Ljava/lang/String;
    .end local v8    # "sharedDateString":Ljava/lang/String;
    .restart local v24    # "statisticsJsonData":Lorg/json/JSONObject;
    .restart local v25    # "favorites":I
    .restart local v26    # "modifiedDateString":Ljava/lang/String;
    .restart local v27    # "sharedDateString":Ljava/lang/String;
    :goto_2
    new-instance v0, Lorg/catrobat/catroid/common/ScratchProgramData;

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v21, v1

    move/from16 v1, v25

    .end local v22    # "loves":I
    .end local v25    # "favorites":I
    .local v1, "favorites":I
    .local v7, "createdDate":Ljava/util/Date;
    .local v8, "loves":I
    .local v21, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    move-object v6, v0

    move/from16 v28, v8

    move-object/from16 v22, v26

    move-object/from16 v25, v27

    move/from16 v26, v1

    move-object v1, v7

    .end local v7    # "createdDate":Ljava/util/Date;
    .end local v8    # "loves":I
    .end local v27    # "sharedDateString":Ljava/lang/String;
    .local v1, "createdDate":Ljava/util/Date;
    .local v22, "modifiedDateString":Ljava/lang/String;
    .local v25, "sharedDateString":Ljava/lang/String;
    .local v26, "favorites":I
    .local v28, "loves":I
    move-wide v7, v12

    move-object/from16 v27, v9

    .end local v9    # "createdDateString":Ljava/lang/String;
    .local v27, "createdDateString":Ljava/lang/String;
    move-object v9, v5

    move-object/from16 v29, v10

    .end local v10    # "historyJsonData":Lorg/json/JSONObject;
    .local v29, "historyJsonData":Lorg/json/JSONObject;
    move-object/from16 v10, v17

    move-object/from16 v30, v11

    .end local v11    # "authorJsonData":Lorg/json/JSONObject;
    .local v30, "authorJsonData":Lorg/json/JSONObject;
    move-object/from16 v11, v23

    invoke-direct/range {v6 .. v11}, Lorg/catrobat/catroid/common/ScratchProgramData;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/images/WebImage;)V

    .line 286
    .local v0, "programData":Lorg/catrobat/catroid/common/ScratchProgramData;
    invoke-virtual {v0, v15}, Lorg/catrobat/catroid/common/ScratchProgramData;->setInstructions(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v14}, Lorg/catrobat/catroid/common/ScratchProgramData;->setNotesAndCredits(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/common/ScratchProgramData;->setCreatedDate(Ljava/util/Date;)V

    .line 289
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/common/ScratchProgramData;->setModifiedDate(Ljava/util/Date;)V

    .line 290
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->setSharedDate(Ljava/util/Date;)V

    .line 291
    invoke-virtual {v0, v4}, Lorg/catrobat/catroid/common/ScratchProgramData;->setViews(I)V

    .line 292
    move/from16 v6, v28

    .end local v28    # "loves":I
    .local v6, "loves":I
    invoke-virtual {v0, v6}, Lorg/catrobat/catroid/common/ScratchProgramData;->setLoves(I)V

    .line 293
    move/from16 v7, v26

    .end local v26    # "favorites":I
    .local v7, "favorites":I
    invoke-virtual {v0, v7}, Lorg/catrobat/catroid/common/ScratchProgramData;->setFavorites(I)V

    .line 294
    move-object/from16 v8, v21

    .end local v21    # "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    .local v8, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v0    # "programData":Lorg/catrobat/catroid/common/ScratchProgramData;
    .end local v1    # "createdDate":Ljava/util/Date;
    .end local v2    # "sharedDate":Ljava/util/Date;
    .end local v3    # "modifiedDate":Ljava/util/Date;
    .end local v4    # "views":I
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "loves":I
    .end local v7    # "favorites":I
    .end local v12    # "id":J
    .end local v14    # "notesAndCredits":Ljava/lang/String;
    .end local v15    # "instructions":Ljava/lang/String;
    .end local v16    # "imageURL":Ljava/lang/String;
    .end local v17    # "ownerUserName":Ljava/lang/String;
    .end local v20    # "programJsonData":Lorg/json/JSONObject;
    .end local v22    # "modifiedDateString":Ljava/lang/String;
    .end local v23    # "image":Lcom/google/android/gms/common/images/WebImage;
    .end local v24    # "statisticsJsonData":Lorg/json/JSONObject;
    .end local v25    # "sharedDateString":Ljava/lang/String;
    .end local v27    # "createdDateString":Ljava/lang/String;
    .end local v29    # "historyJsonData":Lorg/json/JSONObject;
    .end local v30    # "authorJsonData":Lorg/json/JSONObject;
    add-int/lit8 v2, v18, 0x1

    move-object v1, v8

    move-object/from16 v0, v19

    .end local v18    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .end local v8    # "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    .end local v19    # "iso8601LocalDateFormat":Ljava/text/DateFormat;
    .local v0, "iso8601LocalDateFormat":Ljava/text/DateFormat;
    .local v1, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    :cond_2
    move-object v8, v1

    .line 296
    .end local v1    # "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    .end local v2    # "i":I
    .restart local v8    # "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    return-object v8
.end method

.method private getRequestInterruptable(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    .line 380
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 381
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 385
    .local v0, "request":Lokhttp3/Request;
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 387
    .local v1, "httpClient":Lokhttp3/OkHttpClient;
    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lokhttp3/ConnectionSpec;

    const/4 v4, 0x0

    sget-object v5, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v5, v3, v4

    .line 389
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    move-object v1, v2

    .line 393
    :cond_0
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 394
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 395
    .end local v1    # "httpClient":Lokhttp3/OkHttpClient;
    .end local v2    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v3, 0x3ea

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$downloadMedia$2(Landroid/os/ResultReceiver;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .param p0, "receiver"    # Landroid/os/ResultReceiver;
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 356
    .local v0, "originalResponse":Lokhttp3/Response;
    new-instance v1, Lorg/catrobat/catroid/web/ProgressResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$-17Sr95fTN6Ebuxq4rouqG1mSy0;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$-17Sr95fTN6Ebuxq4rouqG1mSy0;-><init>(Landroid/os/ResultReceiver;)V

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;)V

    .line 362
    .local v1, "body":Lorg/catrobat/catroid/web/ProgressResponseBody;
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    .line 363
    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    .line 362
    return-object v2
.end method

.method static synthetic lambda$null$1(Landroid/os/ResultReceiver;J)V
    .locals 2
    .param p0, "receiver"    # Landroid/os/ResultReceiver;
    .param p1, "progress"    # J

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "currentDownloadProgress"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 361
    return-void
.end method

.method private refreshUploadTokenAndUsername(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "newToken"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 470
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 472
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 473
    const-string v2, "username"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 474
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 475
    return-void
.end method


# virtual methods
.method public downloadMedia(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Directory not created"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_1
    :goto_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 350
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 353
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lorg/catrobat/catroid/web/ServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 354
    .local v2, "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Ux10Bp725jiDWP1OfqoZ0MWX5XI;

    invoke-direct {v4, p3}, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Ux10Bp725jiDWP1OfqoZ0MWX5XI;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 367
    .local v3, "httpClient":Lokhttp3/OkHttpClient;
    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 369
    .local v4, "response":Lokhttp3/Response;
    const/16 v5, 0x3ea

    :try_start_0
    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v6

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .local v6, "bufferedSink":Lokio/BufferedSink;
    :try_start_1
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 371
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v7

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    if-eqz v6, :cond_2

    :try_start_2
    invoke-interface {v6}, Lokio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 377
    .end local v6    # "bufferedSink":Lokio/BufferedSink;
    :cond_2
    nop

    .line 378
    return-void

    .line 373
    .restart local v6    # "bufferedSink":Lokio/BufferedSink;
    :cond_3
    :try_start_3
    new-instance v7, Lorg/catrobat/catroid/web/WebconnectionException;

    const-string v8, "FAIL"

    invoke-direct {v7, v5, v8}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    .end local v3    # "httpClient":Lokhttp3/OkHttpClient;
    .end local v4    # "response":Lokhttp3/Response;
    .end local v6    # "bufferedSink":Lokio/BufferedSink;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "filePath":Ljava/lang/String;
    .end local p3    # "receiver":Landroid/os/ResultReceiver;
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "request":Lokhttp3/Request;
    .restart local v2    # "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    .restart local v3    # "httpClient":Lokhttp3/OkHttpClient;
    .restart local v4    # "response":Lokhttp3/Response;
    .restart local v6    # "bufferedSink":Lokio/BufferedSink;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "filePath":Ljava/lang/String;
    .restart local p3    # "receiver":Landroid/os/ResultReceiver;
    :catchall_0
    move-exception v7

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    .end local v3    # "httpClient":Lokhttp3/OkHttpClient;
    .end local v4    # "response":Lokhttp3/Response;
    .end local v6    # "bufferedSink":Lokio/BufferedSink;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "filePath":Ljava/lang/String;
    .end local p3    # "receiver":Landroid/os/ResultReceiver;
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 375
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "request":Lokhttp3/Request;
    .restart local v2    # "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    .restart local v3    # "httpClient":Lokhttp3/OkHttpClient;
    .restart local v4    # "response":Lokhttp3/Response;
    .restart local v6    # "bufferedSink":Lokio/BufferedSink;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "filePath":Ljava/lang/String;
    .restart local p3    # "receiver":Landroid/os/ResultReceiver;
    :catchall_1
    move-exception v8

    if-eqz v6, :cond_4

    :try_start_5
    invoke-interface {v6}, Lokio/BufferedSink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v9

    :try_start_6
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    .end local v3    # "httpClient":Lokhttp3/OkHttpClient;
    .end local v4    # "response":Lokhttp3/Response;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "filePath":Ljava/lang/String;
    .end local p3    # "receiver":Landroid/os/ResultReceiver;
    :cond_4
    :goto_1
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v6    # "bufferedSink":Lokio/BufferedSink;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "request":Lokhttp3/Request;
    .restart local v2    # "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    .restart local v3    # "httpClient":Lokhttp3/OkHttpClient;
    .restart local v4    # "response":Lokhttp3/Response;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "filePath":Ljava/lang/String;
    .restart local p3    # "receiver":Landroid/os/ResultReceiver;
    :catch_0
    move-exception v6

    .line 376
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v7
.end method

.method public fetchDefaultScratchPrograms()Lorg/catrobat/catroid/common/ScratchSearchResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 190
    const-string v0, "https://scratch2.catrob.at/api/v1/projects/"

    move-object v1, v0

    .line 191
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/web/ServerCalls;->getRequestInterruptable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    .line 193
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "results"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 195
    .local v2, "results":Lorg/json/JSONArray;
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/web/ServerCalls;->extractScratchProgramDataListFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 197
    .local v3, "programDataList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    new-instance v4, Lorg/catrobat/catroid/common/ScratchSearchResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lorg/catrobat/catroid/common/ScratchSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 198
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "results":Lorg/json/JSONArray;
    .end local v3    # "programDataList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v2, 0x3e9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public fetchScratchProgramDetails(J)Lorg/catrobat/catroid/common/ScratchProgramData;
    .locals 38
    .param p1, "programID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;,
            Lorg/catrobat/catroid/web/WebScratchProgramException;
        }
    .end annotation

    .line 102
    move-object/from16 v1, p0

    const-string v2, "image"

    const-string v0, "notes_and_credits"

    const-string v3, "instructions"

    const-string v4, "image_url"

    const-string v5, "owner"

    const-string v6, "title"

    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v7, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 105
    .local v7, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://scratch2.catrob.at/api/v1/projects/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p1

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "url":Ljava/lang/String;
    invoke-direct {v1, v9}, Lorg/catrobat/catroid/web/ServerCalls;->getRequestInterruptable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    .line 109
    new-instance v10, Lorg/json/JSONObject;

    iget-object v11, v1, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v10, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v11

    const/16 v17, 0x0

    if-nez v11, :cond_0

    .line 111
    return-object v17

    .line 114
    :cond_0
    const-string v11, "accessible"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 119
    const-string v11, "projectData"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 120
    .local v11, "jsonData":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v14

    if-eqz v14, :cond_8

    .line 124
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 125
    .local v14, "title":Ljava/lang/String;
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 126
    .local v15, "owner":Ljava/lang/String;
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v4, v17

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "imageURL":Ljava/lang/String;
    :goto_0
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v3, v17

    goto :goto_1

    :cond_2
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "instructions":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, v17

    goto :goto_2

    :cond_3
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object/from16 v18, v0

    .line 129
    .local v18, "notesAndCredits":Ljava/lang/String;
    const-string v0, "shared_date"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 130
    .local v19, "sharedDateString":Ljava/lang/String;
    const-string v0, "modified_date"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 131
    .local v20, "modifiedDateString":Ljava/lang/String;
    const-string v0, "views"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    .line 132
    .local v21, "views":I
    const-string v0, "favorites"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    .line 133
    .local v22, "favorites":I
    const-string v0, "loves"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    .line 134
    .local v23, "loves":I
    const-string v0, "visibility"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/catrobat/catroid/common/ScratchVisibilityState;->valueOf(I)Lorg/catrobat/catroid/common/ScratchVisibilityState;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v24, v0

    .line 138
    .local v24, "visibilityState":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    move-object/from16 v8, v19

    .end local v19    # "sharedDateString":Ljava/lang/String;
    .local v8, "sharedDateString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .local v0, "sharedDate":Ljava/util/Date;
    move-object v1, v0

    goto :goto_3

    .line 183
    .end local v0    # "sharedDate":Ljava/util/Date;
    .end local v3    # "instructions":Ljava/lang/String;
    .end local v4    # "imageURL":Ljava/lang/String;
    .end local v8    # "sharedDateString":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "jsonData":Lorg/json/JSONObject;
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "owner":Ljava/lang/String;
    .end local v18    # "notesAndCredits":Ljava/lang/String;
    .end local v20    # "modifiedDateString":Ljava/lang/String;
    .end local v21    # "views":I
    .end local v22    # "favorites":I
    .end local v23    # "loves":I
    .end local v24    # "visibilityState":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    :catch_0
    move-exception v0

    move-object/from16 v20, v7

    goto/16 :goto_9

    .line 139
    .restart local v3    # "instructions":Ljava/lang/String;
    .restart local v4    # "imageURL":Ljava/lang/String;
    .restart local v8    # "sharedDateString":Ljava/lang/String;
    .restart local v9    # "url":Ljava/lang/String;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v11    # "jsonData":Lorg/json/JSONObject;
    .restart local v14    # "title":Ljava/lang/String;
    .restart local v15    # "owner":Ljava/lang/String;
    .restart local v18    # "notesAndCredits":Ljava/lang/String;
    .restart local v20    # "modifiedDateString":Ljava/lang/String;
    .restart local v21    # "views":I
    .restart local v22    # "favorites":I
    .restart local v23    # "loves":I
    .restart local v24    # "visibilityState":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    :catch_1
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 140
    .local v0, "ex":Ljava/text/ParseException;
    const/16 v16, 0x0

    move-object/from16 v1, v16

    .line 145
    .end local v0    # "ex":Ljava/text/ParseException;
    .local v1, "sharedDate":Ljava/util/Date;
    :goto_3
    move-object/from16 v19, v8

    move-object/from16 v8, v20

    .end local v20    # "modifiedDateString":Ljava/lang/String;
    .local v8, "modifiedDateString":Ljava/lang/String;
    .restart local v19    # "sharedDateString":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .local v0, "modifiedDate":Ljava/util/Date;
    goto :goto_4

    .line 146
    .end local v0    # "modifiedDate":Ljava/util/Date;
    :catch_2
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 147
    .local v0, "ex":Ljava/text/ParseException;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    .line 150
    .local v0, "modifiedDate":Ljava/util/Date;
    :goto_4
    const/16 v16, 0x0

    .line 151
    .local v16, "image":Lcom/google/android/gms/common/images/WebImage;
    move-object/from16 v20, v7

    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .local v20, "formatter":Ljava/text/SimpleDateFormat;
    if-eqz v4, :cond_4

    .line 152
    :try_start_3
    new-instance v7, Lcom/google/android/gms/common/images/WebImage;

    move-object/from16 v26, v8

    .end local v8    # "modifiedDateString":Ljava/lang/String;
    .local v26, "modifiedDateString":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v27, v4

    move-object/from16 v28, v9

    const/16 v4, 0x168

    const/16 v9, 0x1e0

    .end local v4    # "imageURL":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    .local v27, "imageURL":Ljava/lang/String;
    .local v28, "url":Ljava/lang/String;
    invoke-direct {v7, v8, v9, v4}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    move-object/from16 v16, v7

    move-object/from16 v4, v16

    goto :goto_5

    .line 151
    .end local v26    # "modifiedDateString":Ljava/lang/String;
    .end local v27    # "imageURL":Ljava/lang/String;
    .end local v28    # "url":Ljava/lang/String;
    .restart local v4    # "imageURL":Ljava/lang/String;
    .restart local v8    # "modifiedDateString":Ljava/lang/String;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_4
    move-object/from16 v27, v4

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    .end local v4    # "imageURL":Ljava/lang/String;
    .end local v8    # "modifiedDateString":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    .restart local v26    # "modifiedDateString":Ljava/lang/String;
    .restart local v27    # "imageURL":Ljava/lang/String;
    .restart local v28    # "url":Ljava/lang/String;
    move-object/from16 v4, v16

    .line 156
    .end local v16    # "image":Lcom/google/android/gms/common/images/WebImage;
    .local v4, "image":Lcom/google/android/gms/common/images/WebImage;
    :goto_5
    new-instance v7, Lorg/catrobat/catroid/common/ScratchProgramData;

    move-object v8, v11

    .end local v11    # "jsonData":Lorg/json/JSONObject;
    .local v8, "jsonData":Lorg/json/JSONObject;
    move-object v11, v7

    move-wide/from16 v12, p1

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lorg/catrobat/catroid/common/ScratchProgramData;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/images/WebImage;)V

    .line 157
    .local v7, "programData":Lorg/catrobat/catroid/common/ScratchProgramData;
    invoke-virtual {v7, v3}, Lorg/catrobat/catroid/common/ScratchProgramData;->setInstructions(Ljava/lang/String;)V

    .line 158
    move-object/from16 v9, v18

    .end local v18    # "notesAndCredits":Ljava/lang/String;
    .local v9, "notesAndCredits":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lorg/catrobat/catroid/common/ScratchProgramData;->setNotesAndCredits(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7, v0}, Lorg/catrobat/catroid/common/ScratchProgramData;->setModifiedDate(Ljava/util/Date;)V

    .line 160
    invoke-virtual {v7, v1}, Lorg/catrobat/catroid/common/ScratchProgramData;->setSharedDate(Ljava/util/Date;)V

    .line 161
    move/from16 v11, v21

    .end local v21    # "views":I
    .local v11, "views":I
    invoke-virtual {v7, v11}, Lorg/catrobat/catroid/common/ScratchProgramData;->setViews(I)V

    .line 162
    move/from16 v12, v23

    .end local v23    # "loves":I
    .local v12, "loves":I
    invoke-virtual {v7, v12}, Lorg/catrobat/catroid/common/ScratchProgramData;->setLoves(I)V

    .line 163
    move/from16 v13, v22

    .end local v22    # "favorites":I
    .local v13, "favorites":I
    invoke-virtual {v7, v13}, Lorg/catrobat/catroid/common/ScratchProgramData;->setFavorites(I)V

    .line 164
    move-object/from16 v16, v1

    move-object/from16 v1, v24

    .end local v24    # "visibilityState":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    .local v1, "visibilityState":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    .local v16, "sharedDate":Ljava/util/Date;
    invoke-virtual {v7, v1}, Lorg/catrobat/catroid/common/ScratchProgramData;->setVisibilityState(Lorg/catrobat/catroid/common/ScratchVisibilityState;)V

    .line 166
    move-object/from16 v18, v0

    .end local v0    # "modifiedDate":Ljava/util/Date;
    .local v18, "modifiedDate":Ljava/util/Date;
    const-string v0, "remixes"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 167
    .local v0, "remixes":Lorg/json/JSONArray;
    const/16 v21, 0x0

    move-object/from16 v22, v1

    move/from16 v1, v21

    .local v1, "i":I
    .local v22, "visibilityState":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    :goto_6
    move-object/from16 v21, v3

    .end local v3    # "instructions":Ljava/lang/String;
    .local v21, "instructions":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 168
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 169
    .local v3, "remixJson":Lorg/json/JSONObject;
    move-object/from16 v23, v0

    .end local v0    # "remixes":Lorg/json/JSONArray;
    .local v23, "remixes":Lorg/json/JSONArray;
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 170
    .local v30, "remixId":J
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 171
    .local v32, "remixTitle":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 172
    .local v33, "remixOwner":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, v17

    goto :goto_7

    :cond_5
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "remixImageURL":Ljava/lang/String;
    :goto_7
    const/16 v24, 0x0

    .line 175
    .local v24, "remixImage":Lcom/google/android/gms/common/images/WebImage;
    if-eqz v0, :cond_6

    .line 176
    move-object/from16 v35, v2

    new-instance v2, Lcom/google/android/gms/common/images/WebImage;

    move-object/from16 v36, v3

    .end local v3    # "remixJson":Lorg/json/JSONObject;
    .local v36, "remixJson":Lorg/json/JSONObject;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v37, v0

    move-object/from16 v25, v4

    const/16 v0, 0x168

    const/16 v4, 0x1e0

    .end local v0    # "remixImageURL":Ljava/lang/String;
    .end local v4    # "image":Lcom/google/android/gms/common/images/WebImage;
    .local v25, "image":Lcom/google/android/gms/common/images/WebImage;
    .local v37, "remixImageURL":Ljava/lang/String;
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    move-object/from16 v24, v2

    goto :goto_8

    .line 175
    .end local v25    # "image":Lcom/google/android/gms/common/images/WebImage;
    .end local v36    # "remixJson":Lorg/json/JSONObject;
    .end local v37    # "remixImageURL":Ljava/lang/String;
    .restart local v0    # "remixImageURL":Ljava/lang/String;
    .restart local v3    # "remixJson":Lorg/json/JSONObject;
    .restart local v4    # "image":Lcom/google/android/gms/common/images/WebImage;
    :cond_6
    move-object/from16 v37, v0

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-object/from16 v25, v4

    const/16 v0, 0x168

    const/16 v4, 0x1e0

    .line 180
    .end local v0    # "remixImageURL":Ljava/lang/String;
    .end local v3    # "remixJson":Lorg/json/JSONObject;
    .end local v4    # "image":Lcom/google/android/gms/common/images/WebImage;
    .restart local v25    # "image":Lcom/google/android/gms/common/images/WebImage;
    .restart local v36    # "remixJson":Lorg/json/JSONObject;
    .restart local v37    # "remixImageURL":Ljava/lang/String;
    :goto_8
    new-instance v2, Lorg/catrobat/catroid/common/ScratchProgramData;

    move-object/from16 v29, v2

    move-object/from16 v34, v24

    invoke-direct/range {v29 .. v34}, Lorg/catrobat/catroid/common/ScratchProgramData;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/images/WebImage;)V

    invoke-virtual {v7, v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->addRemixProgram(Lorg/catrobat/catroid/common/ScratchProgramData;)V

    .line 167
    .end local v24    # "remixImage":Lcom/google/android/gms/common/images/WebImage;
    .end local v30    # "remixId":J
    .end local v32    # "remixTitle":Ljava/lang/String;
    .end local v33    # "remixOwner":Ljava/lang/String;
    .end local v36    # "remixJson":Lorg/json/JSONObject;
    .end local v37    # "remixImageURL":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v21

    move-object/from16 v0, v23

    move-object/from16 v4, v25

    move-object/from16 v2, v35

    goto :goto_6

    .line 182
    .end local v1    # "i":I
    .end local v23    # "remixes":Lorg/json/JSONArray;
    .end local v25    # "image":Lcom/google/android/gms/common/images/WebImage;
    .local v0, "remixes":Lorg/json/JSONArray;
    .restart local v4    # "image":Lcom/google/android/gms/common/images/WebImage;
    :cond_7
    return-object v7

    .line 121
    .end local v0    # "remixes":Lorg/json/JSONArray;
    .end local v4    # "image":Lcom/google/android/gms/common/images/WebImage;
    .end local v8    # "jsonData":Lorg/json/JSONObject;
    .end local v12    # "loves":I
    .end local v13    # "favorites":I
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "owner":Ljava/lang/String;
    .end local v16    # "sharedDate":Ljava/util/Date;
    .end local v18    # "modifiedDate":Ljava/util/Date;
    .end local v19    # "sharedDateString":Ljava/lang/String;
    .end local v20    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v21    # "instructions":Ljava/lang/String;
    .end local v22    # "visibilityState":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    .end local v26    # "modifiedDateString":Ljava/lang/String;
    .end local v27    # "imageURL":Ljava/lang/String;
    .end local v28    # "url":Ljava/lang/String;
    .local v7, "formatter":Ljava/text/SimpleDateFormat;
    .local v9, "url":Ljava/lang/String;
    .local v11, "jsonData":Lorg/json/JSONObject;
    :cond_8
    move-object/from16 v20, v7

    move-object/from16 v28, v9

    move-object v8, v11

    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v9    # "url":Ljava/lang/String;
    .end local v11    # "jsonData":Lorg/json/JSONObject;
    .restart local v8    # "jsonData":Lorg/json/JSONObject;
    .restart local v20    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v28    # "url":Ljava/lang/String;
    new-instance v0, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v1, 0x3eb

    const-string v2, "Field projectData is empty."

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    .end local v20    # "formatter":Ljava/text/SimpleDateFormat;
    .end local p1    # "programID":J
    throw v0

    .line 115
    .end local v8    # "jsonData":Lorg/json/JSONObject;
    .end local v28    # "url":Ljava/lang/String;
    .restart local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v9    # "url":Ljava/lang/String;
    .restart local p1    # "programID":J
    :cond_9
    move-object/from16 v20, v7

    move-object/from16 v28, v9

    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v9    # "url":Ljava/lang/String;
    .restart local v20    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v28    # "url":Ljava/lang/String;
    new-instance v0, Lorg/catrobat/catroid/web/WebScratchProgramException;

    const-string v1, "Program not accessible!"

    const/16 v2, 0x3e9

    invoke-direct {v0, v2, v1}, Lorg/catrobat/catroid/web/WebScratchProgramException;-><init>(ILjava/lang/String;)V

    .end local v20    # "formatter":Ljava/text/SimpleDateFormat;
    .end local p1    # "programID":J
    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 183
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v28    # "url":Ljava/lang/String;
    .restart local v20    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local p1    # "programID":J
    :catch_3
    move-exception v0

    goto :goto_9

    .end local v20    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v7    # "formatter":Ljava/text/SimpleDateFormat;
    :catch_4
    move-exception v0

    move-object/from16 v20, v7

    .line 184
    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v20    # "formatter":Ljava/text/SimpleDateFormat;
    :goto_9
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-direct {v1, v3, v2}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public googleExchangeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "mail"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/lang/String;
    .param p6, "idToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    .line 439
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    .local v0, "postValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v1, "email"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v1, "locale"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v1, "id_token"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v1, "mobile"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v1, "https://share.catrob.at/pocketcode/api/exchangeGoogleCode/exchangeGoogleCode.json"

    invoke-static {v0, v1}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->createFormEncodedRequest(Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v1

    .line 449
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lorg/catrobat/catroid/web/ServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v2, v1}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    .line 451
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "statusCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 453
    .local v3, "statusCode":I
    sget-object v4, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_1

    sget-object v4, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_REGISTER_OK:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    new-instance v4, Lorg/catrobat/catroid/web/WebconnectionException;

    iget-object v5, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    .end local p1    # "code":Ljava/lang/String;
    .end local p2    # "id":Ljava/lang/String;
    .end local p3    # "username":Ljava/lang/String;
    .end local p4    # "mail":Ljava/lang/String;
    .end local p5    # "locale":Ljava/lang/String;
    .end local p6    # "idToken":Ljava/lang/String;
    throw v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .restart local p1    # "code":Ljava/lang/String;
    .restart local p2    # "id":Ljava/lang/String;
    .restart local p3    # "username":Ljava/lang/String;
    .restart local p4    # "mail":Ljava/lang/String;
    .restart local p5    # "locale":Ljava/lang/String;
    .restart local p6    # "idToken":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 458
    .end local v0    # "postValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "statusCode":I
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v2, 0x3e9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public googleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p1, "mail"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    .line 410
    const/16 v0, 0x3e9

    if-eqz p5, :cond_0

    .line 415
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v1, "postValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v2, "username"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v2, "locale"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v2, "https://share.catrob.at/pocketcode/api/loginWithGoogle/loginWithGoogle.json"

    .line 422
    .local v2, "serverUrl":Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->createFormEncodedRequest(Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v3

    .line 423
    .local v3, "request":Lokhttp3/Request;
    iget-object v4, p0, Lorg/catrobat/catroid/web/ServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v4, v3}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    .line 425
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 426
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "statusCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/catrobat/catroid/web/ServerCalls;->checkStatusCode200(I)V

    .line 427
    const-string v5, "token"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2, p5}, Lorg/catrobat/catroid/web/ServerCalls;->refreshUploadTokenAndUsername(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    const/4 v0, 0x1

    return v0

    .line 430
    .end local v1    # "postValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "serverUrl":Ljava/lang/String;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 411
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const-string v2, "Context is null."

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public synthetic lambda$uploadProject$0$ServerCalls(Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;Lorg/catrobat/catroid/transfers/project/ProjectUploadData;Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;)V
    .locals 4
    .param p1, "errorCallback"    # Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;
    .param p2, "successCallback"    # Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;
    .param p3, "uploadData"    # Lorg/catrobat/catroid/transfers/project/ProjectUploadData;
    .param p4, "uploadResponse"    # Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;

    .line 305
    iget-object v0, p4, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;->token:Ljava/lang/String;

    .line 306
    .local v0, "newToken":Ljava/lang/String;
    iget-object v1, p4, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;->projectId:Ljava/lang/String;

    iput-object v1, p0, Lorg/catrobat/catroid/web/ServerCalls;->projectId:Ljava/lang/String;

    .line 308
    iget v1, p4, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;->statusCode:I

    sget-object v2, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 309
    iget v1, p4, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;->statusCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload failed! JSON Response was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p4, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 310
    :cond_0
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerCalls;->projectId:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2, v0}, Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_2
    :goto_0
    iget v1, p4, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;->statusCode:I

    iget-object v2, p4, Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;->answer:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;->onError(ILjava/lang/String;)V

    .line 315
    :goto_1
    return-void
.end method

.method public scratchSearch(Ljava/lang/String;II)Lorg/catrobat/catroid/common/ScratchSearchResult;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "numberOfItems"    # I
    .param p3, "pageNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    .line 206
    const/16 v0, 0x3e9

    if-eqz p1, :cond_3

    .line 209
    const/4 v1, 0x1

    if-lt p2, v1, :cond_2

    .line 213
    if-ltz p3, :cond_1

    .line 218
    :try_start_0
    new-instance v2, Lorg/catrobat/catroid/web/ServerCalls$1;

    invoke-direct {v2, p0, p2, p3, p1}, Lorg/catrobat/catroid/web/ServerCalls$1;-><init>(Lorg/catrobat/catroid/web/ServerCalls;IILjava/lang/String;)V

    .line 227
    .local v2, "httpGetParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://api.scratch.mit.edu/search/projects"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .local v3, "urlStringBuilder":Ljava/lang/StringBuilder;
    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 230
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const/16 v6, 0x26

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/web/ServerCalls;->getRequestInterruptable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    .line 240
    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lorg/catrobat/catroid/web/ServerCalls;->resultString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 241
    .local v4, "results":Lorg/json/JSONArray;
    invoke-direct {p0, v4}, Lorg/catrobat/catroid/web/ServerCalls;->extractScratchProgramDataListFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 243
    .local v5, "programDataList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    new-instance v6, Lorg/catrobat/catroid/common/ScratchSearchResult;

    invoke-direct {v6, v5, p1, p3}, Lorg/catrobat/catroid/common/ScratchSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 244
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "httpGetParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "urlStringBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "results":Lorg/json/JSONArray;
    .end local v5    # "programDataList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const-string v2, "pageNumber has to be positive."

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 210
    :cond_2
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const-string v2, "numberOfItems has to be positive and non-zero."

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 207
    :cond_3
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const-string v2, "Query is null."

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public uploadProject(Lorg/catrobat/catroid/transfers/project/ProjectUploadData;Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;)V
    .locals 2
    .param p1, "uploadData"    # Lorg/catrobat/catroid/transfers/project/ProjectUploadData;
    .param p2, "successCallback"    # Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;
    .param p3, "errorCallback"    # Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;

    .line 302
    nop

    .line 303
    invoke-static {p1}, Lorg/catrobat/catroid/web/requests/HttpRequestsKt;->createUploadRequest(Lorg/catrobat/catroid/transfers/project/ProjectUploadData;)Lokhttp3/Request;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;

    invoke-direct {v1, p0, p3, p2, p1}, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;-><init>(Lorg/catrobat/catroid/web/ServerCalls;Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;Lorg/catrobat/catroid/transfers/project/ProjectUploadData;)V

    .line 302
    invoke-direct {p0, v0, v1, p3}, Lorg/catrobat/catroid/web/ServerCalls;->executeUploadCall(Lokhttp3/Request;Lorg/catrobat/catroid/web/ServerCalls$UploadCallSuccessCallback;Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;)V

    .line 318
    return-void
.end method
