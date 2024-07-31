.class public final synthetic Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Ux10Bp725jiDWP1OfqoZ0MWX5XI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic f$0:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Ux10Bp725jiDWP1OfqoZ0MWX5XI;->f$0:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Ux10Bp725jiDWP1OfqoZ0MWX5XI;->f$0:Landroid/os/ResultReceiver;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/web/ServerCalls;->lambda$downloadMedia$2(Landroid/os/ResultReceiver;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
