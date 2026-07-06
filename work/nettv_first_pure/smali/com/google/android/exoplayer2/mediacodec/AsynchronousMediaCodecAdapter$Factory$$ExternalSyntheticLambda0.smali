.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->$r8$lambda$_sfoxALAydTODW5vGEGXx4zjENI(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0

    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->$r8$lambda$zNxUJHIE2b-XogkQb8GUDzkjdG0(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
