.class public Lorg/catrobat/catroid/transfers/GetSurveyTask;
.super Landroid/os/AsyncTask;
.source "GetSurveyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final SURVEY_URL_JSON_KEY:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private onSurveyResponseListener:Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/catrobat/catroid/transfers/GetSurveyTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/GetSurveyTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/GetSurveyTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 53
    return-void
.end method

.method private isUrlStatusCodeOk(Ljava/lang/String;)Z
    .locals 3
    .param p1, "surveyUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 98
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 99
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 100
    .local v1, "status":I
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 102
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/GetSurveyTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/String;

    .line 61
    new-instance v0, Lorg/catrobat/catroid/web/CatrobatServerCalls;

    invoke-direct {v0}, Lorg/catrobat/catroid/web/CatrobatServerCalls;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->getSurvey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "jsonString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 64
    .local v1, "surveyUrl":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/transfers/GetSurveyTask;->parseSurvey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 67
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/transfers/GetSurveyTask;->isUrlStatusCodeOk(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    .line 70
    goto :goto_1

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/catrobat/catroid/transfers/GetSurveyTask;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get survey url"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/GetSurveyTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GetSurveyTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 79
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 80
    return-void

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/GetSurveyTask;->onSurveyResponseListener:Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;

    invoke-interface {v1, v0, p1}, Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;->onSurveyReceived(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void
.end method

.method public parseSurvey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "surveyUrl":Ljava/lang/String;
    return-object v1
.end method

.method public setOnSurveyResponseListener(Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/GetSurveyTask;->onSurveyResponseListener:Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;

    .line 57
    return-void
.end method
