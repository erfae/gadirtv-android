.class public final synthetic Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;I)V
    .registers 4

    iput p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 5

    iget v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_24

    :pswitch_6
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmList;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3;->$r8$lambda$Xjm1ghsEou1JAEToBGOPdewoEgc(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmList;Lio/realm/OrderedCollectionChangeSet;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmResults;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$2;->$r8$lambda$kUzkxXXEX2mItRPrm83WiLOTQok(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmResults;Lio/realm/OrderedCollectionChangeSet;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmResults;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1;->$r8$lambda$X7LXaX9W_-Gehv0zHwBdQPaDq5s(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmResults;Lio/realm/OrderedCollectionChangeSet;)V

    return-void

    :goto_24
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmList;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$4;->$r8$lambda$9qv5NKj4Jqg6s9SfhI-NNXugcoI(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmList;Lio/realm/OrderedCollectionChangeSet;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
