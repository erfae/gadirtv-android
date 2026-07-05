.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/exoplayer2/LoadControl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/LoadControl;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/LoadControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/LoadControl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$xZaK9DjLoRNdBWtrqbwfHJduMcE(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/LoadControl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$C-5Ffb4z3uoaL1oyuSYPz9pS68g(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
