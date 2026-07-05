.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoSize;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$HdX8-5j9fh3Z_9KCQsK59i6Md_s(Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/text/CueGroup;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$_a-BFihSlC5RQW56p-fQ8lB5y8w(Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/DeviceInfo;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$sUcxyD-utLXGRaEs9oeNwJmrpLs(Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$gctp5ihBvE1rmNFbswaKePXtqGQ(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$HZOAricevDNUKKb0KBxzZasKe6E(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$pitVMvVzVidceF16ApRaB1pYLrY(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->$r8$lambda$-WBngl4De8sjkk-X-v8fJ5kqblA(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->$r8$lambda$cBuHNsZypGkQ1KYotO__eto6EPQ(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/Tracks;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->$r8$lambda$NKBNir6luWyymSdYSynE4xWtpUg(Lcom/google/android/exoplayer2/Tracks;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->$r8$lambda$2AU_PwUU4Ob-h1IVmtWA59vsodE(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method
