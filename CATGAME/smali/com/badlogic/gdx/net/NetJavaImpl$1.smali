.class Lcom/badlogic/gdx/net/NetJavaImpl$1;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/net/NetJavaImpl;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/net/NetJavaImpl;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/net/NetJavaImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/net/NetJavaImpl;

    .line 140
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 143
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "NetThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 144
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 145
    return-object v0
.end method
