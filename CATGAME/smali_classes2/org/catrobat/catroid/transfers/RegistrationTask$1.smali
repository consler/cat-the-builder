.class Lorg/catrobat/catroid/transfers/RegistrationTask$1;
.super Ljava/lang/Object;
.source "RegistrationTask.java"

# interfaces
.implements Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/transfers/RegistrationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/transfers/RegistrationTask;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/RegistrationTask;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/transfers/RegistrationTask;

    .line 101
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask$1;->this$0:Lorg/catrobat/catroid/transfers/RegistrationTask;

    iput-object p2, p0, Lorg/catrobat/catroid/transfers/RegistrationTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/RegistrationTask$1;->this$0:Lorg/catrobat/catroid/transfers/RegistrationTask;

    iget-object v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask$1;->val$context:Landroid/content/Context;

    const v2, 0x7f1202e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/transfers/RegistrationTask;->access$002(Lorg/catrobat/catroid/transfers/RegistrationTask;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/RegistrationTask$1;->this$0:Lorg/catrobat/catroid/transfers/RegistrationTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/catroid/transfers/RegistrationTask;->access$102(Lorg/catrobat/catroid/transfers/RegistrationTask;Z)Z

    .line 106
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/RegistrationTask$1;->this$0:Lorg/catrobat/catroid/transfers/RegistrationTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/transfers/RegistrationTask;->access$102(Lorg/catrobat/catroid/transfers/RegistrationTask;Z)Z

    .line 111
    return-void
.end method
