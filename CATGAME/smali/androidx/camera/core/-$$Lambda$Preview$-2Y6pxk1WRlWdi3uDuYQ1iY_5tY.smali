.class public final synthetic Landroidx/camera/core/-$$Lambda$Preview$-2Y6pxk1WRlWdi3uDuYQ1iY_5tY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/Preview;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/Preview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$Preview$-2Y6pxk1WRlWdi3uDuYQ1iY_5tY;->f$0:Landroidx/camera/core/Preview;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$Preview$-2Y6pxk1WRlWdi3uDuYQ1iY_5tY;->f$0:Landroidx/camera/core/Preview;

    invoke-virtual {v0, p1}, Landroidx/camera/core/Preview;->lambda$setUpSurfaceProviderWrap$0$Preview(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
