.class public Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;
.super Lcom/verimatrix/vdc/RequestQueue$Request;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ProfileSetRequest"
.end annotation


# instance fields
.field dataType:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field key:Ljava/lang/String;

.field privacyType:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

.field profile:Lcom/verimatrix/vdc/Profile;

.field setType:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/verimatrix/vdc/Profile;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/RequestQueue$Request;-><init>(I)V

    .line 148
    iput-object p1, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->profile:Lcom/verimatrix/vdc/Profile;

    .line 149
    iput-object p2, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->key:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->value:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->setType:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    .line 152
    iput-object p5, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->dataType:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    .line 153
    iput-object p6, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->privacyType:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    return-void
.end method
