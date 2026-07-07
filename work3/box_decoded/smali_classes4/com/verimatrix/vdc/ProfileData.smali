.class public Lcom/verimatrix/vdc/ProfileData;
.super Ljava/lang/Object;
.source "ProfileData.java"


# instance fields
.field private dataType:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileDataType;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/verimatrix/vdc/ProfileData;->key:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/verimatrix/vdc/ProfileData;->value:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/verimatrix/vdc/ProfileData;->dataType:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    return-void
.end method


# virtual methods
.method public getDataType()Lcom/verimatrix/vdc/Monitor$ProfileDataType;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/verimatrix/vdc/ProfileData;->dataType:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/verimatrix/vdc/ProfileData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/verimatrix/vdc/ProfileData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDataType(Lcom/verimatrix/vdc/Monitor$ProfileDataType;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/verimatrix/vdc/ProfileData;->dataType:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/verimatrix/vdc/ProfileData;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/verimatrix/vdc/ProfileData;->value:Ljava/lang/String;

    return-void
.end method
