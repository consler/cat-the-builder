.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;
.super Landroid/os/Handler;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x8

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_SESSION_READY:I = 0xd

.field private static final MSG_UPDATE_CAPTIONING_ENABLED:I = 0xb

.field private static final MSG_UPDATE_EXTRAS:I = 0x7

.field private static final MSG_UPDATE_METADATA:I = 0x3

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x5

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final MSG_UPDATE_REPEAT_MODE:I = 0x9

.field private static final MSG_UPDATE_SHUFFLE_MODE:I = 0xc

.field private static final MSG_UPDATE_VOLUME:I = 0x4


# instance fields
.field mRegistered:Z

.field final synthetic this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1102
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 1103
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1100
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->mRegistered:Z

    .line 1104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1108
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->mRegistered:Z

    if-nez v0, :cond_0

    .line 1109
    return-void

    .line 1111
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1152
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionReady()V

    goto/16 :goto_0

    .line 1137
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onShuffleModeChanged(I)V

    .line 1138
    goto/16 :goto_0

    .line 1131
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onCaptioningEnabledChanged(Z)V

    .line 1132
    goto :goto_0

    .line 1134
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onRepeatModeChanged(I)V

    .line 1135
    goto :goto_0

    .line 1149
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    .line 1150
    goto :goto_0

    .line 1140
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1141
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1142
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 1143
    goto :goto_0

    .line 1128
    .end local v0    # "extras":Landroid/os/Bundle;
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 1129
    goto :goto_0

    .line 1125
    :pswitch_8
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 1126
    goto :goto_0

    .line 1146
    :pswitch_9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    .line 1147
    goto :goto_0

    .line 1122
    :pswitch_a
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1123
    goto :goto_0

    .line 1119
    :pswitch_b
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1120
    goto :goto_0

    .line 1113
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1114
    .restart local v0    # "extras":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1115
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1116
    nop

    .line 1155
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
