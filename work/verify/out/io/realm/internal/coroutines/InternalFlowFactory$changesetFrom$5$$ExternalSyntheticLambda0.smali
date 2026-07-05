.class public final synthetic Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/RealmObjectChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;I)V
    .registers 4

    iput p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V
    .registers 5

    iget v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_18

    goto :goto_e

    :pswitch_6
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5;->$r8$lambda$n45p70UenmQ8UyDHodgcBUkEGak(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    return-void

    :goto_e
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$5$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/DynamicRealmObject;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6;->$r8$lambda$Tuj7GVUV-ste-QluKqO93D3_3UQ(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/DynamicRealmObject;Lio/realm/ObjectChangeSet;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
