.class public final synthetic Lorg/catrobat/catroid/ui/-$$Lambda$WebViewActivity$XQ1jslfWfPHXzdBSoiz66nIi1vs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/WebViewActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/-$$Lambda$WebViewActivity$XQ1jslfWfPHXzdBSoiz66nIi1vs;->f$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lorg/catrobat/catroid/ui/-$$Lambda$WebViewActivity$XQ1jslfWfPHXzdBSoiz66nIi1vs;->f$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/catrobat/catroid/ui/WebViewActivity;->lambda$onCreate$0$WebViewActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
