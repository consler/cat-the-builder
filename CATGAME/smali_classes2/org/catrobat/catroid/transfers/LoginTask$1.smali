.class Lorg/catrobat/catroid/transfers/LoginTask$1;
.super Ljava/lang/Object;
.source "LoginTask.java"

# interfaces
.implements Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/transfers/LoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/transfers/LoginTask;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/LoginTask;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/transfers/LoginTask;

    .line 97
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/LoginTask$1;->this$0:Lorg/catrobat/catroid/transfers/LoginTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 100
    invoke-static {}, Lorg/catrobat/catroid/transfers/LoginTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/LoginTask$1;->this$0:Lorg/catrobat/catroid/transfers/LoginTask;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/transfers/LoginTask;->access$102(Lorg/catrobat/catroid/transfers/LoginTask;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/LoginTask$1;->this$0:Lorg/catrobat/catroid/transfers/LoginTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/catroid/transfers/LoginTask;->access$202(Lorg/catrobat/catroid/transfers/LoginTask;Z)Z

    .line 103
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/LoginTask$1;->this$0:Lorg/catrobat/catroid/transfers/LoginTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/transfers/LoginTask;->access$202(Lorg/catrobat/catroid/transfers/LoginTask;Z)Z

    .line 108
    return-void
.end method
