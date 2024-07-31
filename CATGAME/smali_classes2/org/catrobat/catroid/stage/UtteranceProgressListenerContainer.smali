.class public final Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "UtteranceProgressListenerContainer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016R$\u0010\u0003\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;",
        "Landroid/speech/tts/UtteranceProgressListener;",
        "()V",
        "listeners",
        "",
        "",
        "",
        "addUtteranceProgressListener",
        "",
        "speechFile",
        "Ljava/io/File;",
        "utteranceProgressListener",
        "utteranceId",
        "onDone",
        "",
        "onError",
        "onStart",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/speech/tts/UtteranceProgressListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;->listeners:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addUtteranceProgressListener(Ljava/io/File;Landroid/speech/tts/UtteranceProgressListener;Ljava/lang/String;)Z
    .locals 3
    .param p1, "speechFile"    # Ljava/io/File;
    .param p2, "utteranceProgressListener"    # Landroid/speech/tts/UtteranceProgressListener;
    .param p3, "utteranceId"    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string v0, "speechFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utteranceProgressListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;->listeners:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 36
    .local v0, "utteranceIdListeners":Ljava/util/List;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {p2, p3}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 41
    .end local p0    # "this":Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, "a":Ljava/util/ArrayList;
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v2, p0, Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;->listeners:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v1, 0x1

    .line 37
    .end local v1    # "a":Ljava/util/ArrayList;
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    nop

    .line 36
    :goto_0
    monitor-exit p0

    return v1

    .line 34
    .end local v0    # "utteranceIdListeners":Ljava/util/List;
    .end local p1    # "speechFile":Ljava/io/File;
    .end local p2    # "utteranceProgressListener":Landroid/speech/tts/UtteranceProgressListener;
    .end local p3    # "utteranceId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/UtteranceProgressListener;

    .line 55
    .local v1, "listener":Landroid/speech/tts/UtteranceProgressListener;
    invoke-virtual {v1, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .end local v1    # "listener":Landroid/speech/tts/UtteranceProgressListener;
    goto :goto_1

    .line 57
    .end local p0    # "this":Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;->listeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 53
    .end local p1    # "utteranceId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    return-void
.end method
